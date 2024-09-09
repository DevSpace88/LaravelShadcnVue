# Use the latest version of Alpine
FROM alpine:latest
LABEL maintainer="Netstack GmbH <info@netstack.de>"

# Set environment variables
ENV PHP_VERSION=82

# Install dependencies and PHP 8.2 with Nginx and Docker for docker in docker builds
RUN apk add --no-cache \
    nginx \
    bash \
    curl \
    git \
    php${PHP_VERSION} \
    php${PHP_VERSION}-fpm \
    php${PHP_VERSION}-fileinfo \
    php${PHP_VERSION}-mysqli \
    php${PHP_VERSION}-json \
    php${PHP_VERSION}-opcache \
    php${PHP_VERSION}-ctype \
    php${PHP_VERSION}-curl \
    php${PHP_VERSION}-dom \
    php${PHP_VERSION}-mbstring \
    php${PHP_VERSION}-xml \
    php${PHP_VERSION}-intl \
    php${PHP_VERSION}-xmlwriter \
    php${PHP_VERSION}-xmlreader \
    php${PHP_VERSION}-simplexml \
    php${PHP_VERSION}-tokenizer \
    php${PHP_VERSION}-pcntl \
    php${PHP_VERSION}-pdo \
    php${PHP_VERSION}-pdo_mysql \
    php${PHP_VERSION}-pdo_sqlite \
    php${PHP_VERSION}-phar \
    php${PHP_VERSION}-zip \
    php${PHP_VERSION}-openssl \
    php${PHP_VERSION}-gd \
    php${PHP_VERSION}-iconv \
    php${PHP_VERSION}-session \
    php${PHP_VERSION}-zlib \
    php${PHP_VERSION}-exif \
    php${PHP_VERSION}-ftp \
    php${PHP_VERSION}-bcmath \
    php${PHP_VERSION}-sockets \
    nodejs \
    npm \
    docker

RUN ln -s /usr/bin/php${PHP_VERSION} /usr/bin/php

# Remove default server definition from Nginx to avoid conflicts
RUN rm /etc/nginx/http.d/default.conf

# Copy custom Nginx configuration (if you have one)
COPY nginx.conf /etc/nginx/http.d/default.conf

# Configure PHP-FPM to run as the same user as Nginx
RUN sed -i 's/user = nobody/user = nginx/g' /etc/php${PHP_VERSION}/php-fpm.d/www.conf \
    && sed -i 's/group = nobody/group = nginx/g' /etc/php${PHP_VERSION}/php-fpm.d/www.conf \
    && sed -i 's/;listen.owner = nobody/listen.owner = nginx/g' /etc/php${PHP_VERSION}/php-fpm.d/www.conf \
    && sed -i 's/;listen.group = nobody/listen.group = nginx/g' /etc/php${PHP_VERSION}/php-fpm.d/www.conf

# Create directory for Nginx
RUN mkdir -p /run/nginx

# Create a directory for your web application
RUN mkdir -p /var/www/html

# Set permissions for the web application
RUN chown -R nginx:nginx /var/www/html

WORKDIR /var/www/html

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer


#CMD ["/bin/bash"]
#
#
#FROM netstack/docker-alpine-php-laravel:latest

RUN apk add php82-pdo_sqlite

WORKDIR /var/www/html

## Copy project files
COPY . /var/www/html

# Install Composer dependencies
RUN cd /var/www/html

# Set up Nova
#COPY auth.json /var/www/html

# Install Composer dependencies and set up Nova
RUN composer install \
 && composer update --prefer-dist

# Set correct permissions for storage
RUN chown -R nginx:nginx /var/www/html/storage \
    && chmod -R 775 /var/www/html/storage

RUN php${PHP_VERSION} artisan key:generate \
 && php${PHP_VERSION} artisan nova:install || true \
 && php${PHP_VERSION} artisan nova:check-license || true \
 && php${PHP_VERSION} artisan storage:link

# Install npm dependencies
RUN npm ci
RUN npm run build

# Optimize Composer autoloader
RUN composer dump-autoload --optimize

# Set permissions
RUN chown -R nginx:nginx /var/www/html/storage /var/www/html/bootstrap/cache

# Expose ports
EXPOSE 80

CMD ["sh", "-c", "php-fpm${PHP_VERSION} && nginx -g 'daemon off;'"]
