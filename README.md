# Starter Laravel Inertia Vue ShadCn Tailwind

Dieses Projekt verwendet die folgende UI-Library:  
[shadcn-vue](https://www.shadcn-vue.com/)

# Installation
```bash
composer install
npm install
```

.env von .env.example kopieren

```bash
php artisan migrate
php artisan key:generate
```

## Bereits installierte Komponenten

Die folgenden Komponenten wurden bereits mit `shadcn-vue` installiert:

```bash
npx shadcn-vue@latest add button
npx shadcn-vue@latest add dropdown-menu
npx shadcn-vue@latest add card
npx shadcn-vue@latest add input
npx shadcn-vue@latest add label
npx shadcn-vue@latest add select
npx shadcn-vue@latest add alert
npx shadcn-vue@latest add alert-dialog
npx shadcn-vue@latest add avatar
npx shadcn-vue@latest add aspect-ratio
npx shadcn-vue@latest add badge
npx shadcn-vue@latest add breadcrumb
npx shadcn-vue@latest add calendar
npx shadcn-vue@latest add carousel
npx shadcn-vue@latest add checkbox
npx shadcn-vue@latest add command
npx shadcn-vue@latest add collapsible
npx shadcn-vue@latest add context-menu
npx shadcn-vue@latest add table
npx shadcn-vue@latest add dialog
npx shadcn-vue@latest add drawer
npx shadcn-vue@latest add form
npx shadcn-vue@latest add hover-card
npx shadcn-vue@latest add menubar
npx shadcn-vue@latest add navigation-menu
npx shadcn-vue@latest add number-field
npx shadcn-vue@latest add pagination
npx shadcn-vue@latest add pin-input
npx shadcn-vue@latest add popover
npx shadcn-vue@latest add progress
npx shadcn-vue@latest add radio-group
npx shadcn-vue@latest add range-calendar
npx shadcn-vue@latest add resizable
npx shadcn-vue@latest add scroll-area
npx shadcn-vue@latest add separator
npx shadcn-vue@latest add sheet
npx shadcn-vue@latest add skeleton
npx shadcn-vue@latest add slider
npx shadcn-vue@latest add sonner
npx shadcn-vue@latest add stepper
npx shadcn-vue@latest add switch
npx shadcn-vue@latest add tabs
npx shadcn-vue@latest add tags-input
npx shadcn-vue@latest add textarea
npx shadcn-vue@latest add toast
npx shadcn-vue@latest add toggle
npx shadcn-vue@latest add toggle-group
npx shadcn-vue@latest add tooltip
npx shadcn-vue@latest add chart-area
npx shadcn-vue@latest add chart-line
npx shadcn-vue@latest add chart-line
npx shadcn-vue@latest add chart-donut

npm install -D unplugin-icons @iconify/json
```

# Zur Verwendung benutzt man die Vue-Komponenten aus dem Ordner
```
resources/js/Components/ui/
```


# Testserver starten

```
php artisan serve
npm run dev
```

# Themes einstellen

In der Datei resources/css/app.css lassen sich die Farbkombinationen einstellen.
Dabeo kann man entweder ganz frei vorgehen oder man verwendet diesen Helper [shadcn-themes](https://www.shadcn-vue.com/themes)
