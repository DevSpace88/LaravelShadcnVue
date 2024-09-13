<script setup lang="ts">
import { computed } from 'vue';
import { usePage } from '@inertiajs/vue3';
import {
    Breadcrumb,
    BreadcrumbItem,
    BreadcrumbLink,
    BreadcrumbList,
    BreadcrumbPage,
    BreadcrumbSeparator,
} from '@/components/ui/breadcrumb'

const page = usePage();

const breadcrumbs = computed(() => {
    const path = page.url.split('/').filter(segment => segment);
    let currentPath = '';

    return [
        { name: 'Home', path: '/' },
        ...path.map(segment => {
            currentPath += `/${segment}`;
            return {
                name: segment.charAt(0).toUpperCase() + segment.slice(1),
                path: currentPath
            };
        })
    ];
});

const currentPage = computed(() => breadcrumbs.value[breadcrumbs.value.length - 1]);
</script>

<template>
    <Breadcrumb>
        <BreadcrumbList>
            <template v-for="(crumb, index) in breadcrumbs" :key="crumb.path">
                <BreadcrumbItem v-if="index < breadcrumbs.length - 1">
                    <BreadcrumbLink :href="crumb.path">{{ crumb.name }}</BreadcrumbLink>
                </BreadcrumbItem>
                <BreadcrumbSeparator v-if="index < breadcrumbs.length - 1" />
            </template>
            <BreadcrumbItem>
                <BreadcrumbPage>{{ currentPage.name }}</BreadcrumbPage>
            </BreadcrumbItem>
        </BreadcrumbList>
    </Breadcrumb>
</template>
