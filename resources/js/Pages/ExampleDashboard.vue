<script setup lang="ts">
import Overview from '@/Pages/ExampleDashboardComponents/Overview.vue'
import DateRangePicker from '@/Pages/ExampleDashboardComponents/DateRangePicker.vue'
import MainNav from '@/Pages/ExampleDashboardComponents/MainNav.vue'
import RecentSales from '@/Pages/ExampleDashboardComponents/RecentSales.vue'
import Search from '@/Pages/ExampleDashboardComponents/Search.vue'
import TeamSwitcher from '@/Pages/ExampleDashboardComponents/TeamSwitcher.vue'
import UserNav from '@/Pages/ExampleDashboardComponents/UserNav.vue'

import { Button } from '@/components/ui/button'
import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import {
    Tabs,
    TabsContent,
    TabsList,
    TabsTrigger,
} from '@/components/ui/tabs'
import {Head} from "@inertiajs/vue3";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";


import { LineChart } from '@/components/ui/chart-line'

const data = [
    {
        'year': 1970,
        'Export Growth Rate': 2.04,
        'Import Growth Rate': 1.53,
    },
    {
        'year': 1971,
        'Export Growth Rate': 1.96,
        'Import Growth Rate': 1.58,
    },
    {
        'year': 1972,
        'Export Growth Rate': 1.96,
        'Import Growth Rate': 1.61,
    },
    {
        'year': 1973,
        'Export Growth Rate': 1.93,
        'Import Growth Rate': 1.61,
    },
    {
        'year': 1974,
        'Export Growth Rate': 1.88,
        'Import Growth Rate': 1.67,
    },
    {
        'year': 1975,
        'Export Growth Rate': 1.79,
        'Import Growth Rate': 1.64,
    },
    {
        'year': 1976,
        'Export Growth Rate': 1.77,
        'Import Growth Rate': 1.62,
    },
    {
        'year': 1977,
        'Export Growth Rate': 1.74,
        'Import Growth Rate': 1.69,
    },
    {
        'year': 1978,
        'Export Growth Rate': 1.74,
        'Import Growth Rate': 1.7,
    },
    {
        'year': 1979,
        'Export Growth Rate': 1.77,
        'Import Growth Rate': 1.67,
    },
    {
        'year': 1980,
        'Export Growth Rate': 1.79,
        'Import Growth Rate': 1.7,
    },
    {
        'year': 1981,
        'Export Growth Rate': 1.81,
        'Import Growth Rate': 1.72,
    },
    {
        'year': 1982,
        'Export Growth Rate': 1.84,
        'Import Growth Rate': 1.73,
    },
    {
        'year': 1983,
        'Export Growth Rate': 1.77,
        'Import Growth Rate': 1.73,
    },
    {
        'year': 1984,
        'Export Growth Rate': 1.78,
        'Import Growth Rate': 1.78,
    },
    {
        'year': 1985,
        'Export Growth Rate': 1.78,
        'Import Growth Rate': 1.81,
    },
    {
        'year': 1986,
        'Export Growth Rate': 1.82,
        'Import Growth Rate': 1.89,
    },
    {
        'year': 1987,
        'Export Growth Rate': 1.82,
        'Import Growth Rate': 1.91,
    },
    {
        'year': 1988,
        'Export Growth Rate': 1.77,
        'Import Growth Rate': 1.94,
    },
    {
        'year': 1989,
        'Export Growth Rate': 1.76,
        'Import Growth Rate': 1.94,
    },
    {
        'year': 1990,
        'Export Growth Rate': 1.75,
        'Import Growth Rate': 1.97,
    },
    {
        'year': 1991,
        'Export Growth Rate': 1.62,
        'Import Growth Rate': 1.99,
    },
    {
        'year': 1992,
        'Export Growth Rate': 1.56,
        'Import Growth Rate': 2.12,
    },
    {
        'year': 1993,
        'Export Growth Rate': 1.5,
        'Import Growth Rate': 2.13,
    },
    {
        'year': 1994,
        'Export Growth Rate': 1.46,
        'Import Growth Rate': 2.15,
    },
    {
        'year': 1995,
        'Export Growth Rate': 1.43,
        'Import Growth Rate': 2.17,
    },
    {
        'year': 1996,
        'Export Growth Rate': 1.4,
        'Import Growth Rate': 2.2,
    },
    {
        'year': 1997,
        'Export Growth Rate': 1.37,
        'Import Growth Rate': 2.15,
    },
    {
        'year': 1998,
        'Export Growth Rate': 1.34,
        'Import Growth Rate': 2.07,
    },
    {
        'year': 1999,
        'Export Growth Rate': 1.32,
        'Import Growth Rate': 2.05,
    },
    {
        'year': 2000,
        'Export Growth Rate': 1.33,
        'Import Growth Rate': 2.07,
    },
    {
        'year': 2001,
        'Export Growth Rate': 1.31,
        'Import Growth Rate': 2.08,
    },
    {
        'year': 2002,
        'Export Growth Rate': 1.29,
        'Import Growth Rate': 2.1,
    },
    {
        'year': 2003,
        'Export Growth Rate': 1.27,
        'Import Growth Rate': 2.15,
    },
    {
        'year': 2004,
        'Export Growth Rate': 1.27,
        'Import Growth Rate': 2.21,
    },
    {
        'year': 2005,
        'Export Growth Rate': 1.26,
        'Import Growth Rate': 2.23,
    },
    {
        'year': 2006,
        'Export Growth Rate': 1.26,
        'Import Growth Rate': 2.29,
    },
    {
        'year': 2007,
        'Export Growth Rate': 1.27,
        'Import Growth Rate': 2.34,
    },
    {
        'year': 2008,
        'Export Growth Rate': 1.26,
        'Import Growth Rate': 2.36,
    },
    {
        'year': 2009,
        'Export Growth Rate': 1.26,
        'Import Growth Rate': 2.36,
    },
    {
        'year': 2010,
        'Export Growth Rate': 1.25,
        'Import Growth Rate': 2.35,
    },
    {
        'year': 2011,
        'Export Growth Rate': 1.24,
        'Import Growth Rate': 2.34,
    },
    {
        'year': 2012,
        'Export Growth Rate': 1.25,
        'Import Growth Rate': 2.39,
    },
    {
        'year': 2013,
        'Export Growth Rate': 1.22,
        'Import Growth Rate': 2.3,
    },
    {
        'year': 2014,
        'Export Growth Rate': 1.2,
        'Import Growth Rate': 2.35,
    },
    {
        'year': 2015,
        'Export Growth Rate': 1.17,
        'Import Growth Rate': 2.39,
    },
    {
        'year': 2016,
        'Export Growth Rate': 1.16,
        'Import Growth Rate': 2.41,
    },
    {
        'year': 2017,
        'Export Growth Rate': 1.13,
        'Import Growth Rate': 2.44,
    },
    {
        'year': 2018,
        'Export Growth Rate': 1.07,
        'Import Growth Rate': 2.45,
    },
    {
        'year': 2019,
        'Export Growth Rate': 1.03,
        'Import Growth Rate': 2.47,
    },
    {
        'year': 2020,
        'Export Growth Rate': 0.92,
        'Import Growth Rate': 2.48,
    },
    {
        'year': 2021,
        'Export Growth Rate': 0.82,
        'Import Growth Rate': 2.51,
    },
]
</script>

<template>
    <Head title="Admin Dashboard Example"/>

    <AuthenticatedLayout>
<!--        <template #header>-->
<!--            <h2 class="font-semibold text-xl leading-tight">Dashboard</h2>-->
<!--        </template>-->

    <div class="flex-col md:flex">
        <div class="border-b">
            <div class="flex h-16 items-center px-4">
                <TeamSwitcher />
                <MainNav class="mx-6" />
                <div class="ml-auto flex items-center space-x-4">
                    <Search />
                    <UserNav />
                </div>
            </div>
        </div>
        <div class="flex-1 space-y-4 sm:p-0 md:p-8 pt-6">
            <div class="flex sm:flex-col md:flex-row items-center justify-between space-y-2">
                <h2 class="text-3xl font-bold tracking-tight">
                    Dashboard
                </h2>
                <div class="flex sm:flex-col md:flex-row items-center space-x-2">
                    <DateRangePicker class="m-4" />
                    <Button>Download</Button>
                </div>
            </div>
            <Tabs default-value="overview" class="space-y-4">
                <TabsList>
                    <TabsTrigger value="overview">
                        Overview
                    </TabsTrigger>
                    <TabsTrigger value="analytics" disabled>
                        Analytics
                    </TabsTrigger>
                    <TabsTrigger value="reports" disabled>
                        Reports
                    </TabsTrigger>
                    <TabsTrigger value="notifications" disabled>
                        Notifications
                    </TabsTrigger>
                </TabsList>
                <TabsContent value="overview" class="space-y-4">
                    <div class="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
                        <Card>
                            <CardHeader class="flex flex-row items-center justify-between space-y-0 pb-2">
                                <CardTitle class="text-sm font-medium">
                                    Total Revenue
                                </CardTitle>
                                <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    strokeLinecap="round"
                                    strokeLinejoin="round"
                                    strokeWidth="2"
                                    class="h-4 w-4 text-muted-foreground"
                                >
                                    <path d="M12 2v20M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6" />
                                </svg>
                            </CardHeader>
                            <CardContent>
                                <div class="text-2xl font-bold">
                                    $45,231.89
                                </div>
                                <p class="text-xs text-muted-foreground">
                                    +20.1% from last month
                                </p>
                            </CardContent>
                        </Card>
                        <Card>
                            <CardHeader class="flex flex-row items-center justify-between space-y-0 pb-2">
                                <CardTitle class="text-sm font-medium">
                                    Subscriptions
                                </CardTitle>
                                <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    strokeLinecap="round"
                                    strokeLinejoin="round"
                                    strokeWidth="2"
                                    class="h-4 w-4 text-muted-foreground"
                                >
                                    <path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2" />
                                    <circle cx="9" cy="7" r="4" />
                                    <path d="M22 21v-2a4 4 0 0 0-3-3.87M16 3.13a4 4 0 0 1 0 7.75" />
                                </svg>
                            </CardHeader>
                            <CardContent>
                                <div class="text-2xl font-bold">
                                    +2350
                                </div>
                                <p class="text-xs text-muted-foreground">
                                    +180.1% from last month
                                </p>
                            </CardContent>
                        </Card>
                        <Card>
                            <CardHeader class="flex flex-row items-center justify-between space-y-0 pb-2">
                                <CardTitle class="text-sm font-medium">
                                    Sales
                                </CardTitle>
                                <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    strokeLinecap="round"
                                    strokeLinejoin="round"
                                    strokeWidth="2"
                                    class="h-4 w-4 text-muted-foreground"
                                >
                                    <rect width="20" height="14" x="2" y="5" rx="2" />
                                    <path d="M2 10h20" />
                                </svg>
                            </CardHeader>
                            <CardContent>
                                <div class="text-2xl font-bold">
                                    +12,234
                                </div>
                                <p class="text-xs text-muted-foreground">
                                    +19% from last month
                                </p>
                            </CardContent>
                        </Card>
                        <Card>
                            <CardHeader class="flex flex-row items-center justify-between space-y-0 pb-2">
                                <CardTitle class="text-sm font-medium">
                                    Active Now
                                </CardTitle>
                                <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    strokeLinecap="round"
                                    strokeLinejoin="round"
                                    strokeWidth="2"
                                    class="h-4 w-4 text-muted-foreground"
                                >
                                    <path d="M22 12h-4l-3 9L9 3l-3 9H2" />
                                </svg>
                            </CardHeader>
                            <CardContent>
                                <div class="text-2xl font-bold">
                                    +573
                                </div>
                                <p class="text-xs text-muted-foreground">
                                    +201 since last hour
                                </p>
                            </CardContent>
                        </Card>
                    </div>
                    <div class="grid gap-4 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-7">
                        <Card class="col-span-4">
                            <CardHeader>
                                <CardTitle>Overview</CardTitle>
                            </CardHeader>
                            <CardContent class="pl-2">
                                <Overview />
                            </CardContent>
                        </Card>
                        <Card class="sm:col-span-2 md:col-span-3">
                            <CardHeader>
                                <CardTitle>Recent Sales</CardTitle>
                                <CardDescription>
                                    You made 265 sales this month.
                                </CardDescription>
                            </CardHeader>
                            <CardContent>
                                <RecentSales />
                            </CardContent>
                        </Card>
                    </div>

                    <div class="grid gap-4 md:grid-cols-2 lg:grid-cols-7">
                        <Card class="sm:col-span-2 md:col-span-4">
                            <CardHeader>
                                <CardTitle>Overview</CardTitle>
                            </CardHeader>
                            <CardContent class="pl-2">
                                <LineChart
                                    :data="data"
                                    index="year"
                                    :categories="['Export Growth Rate', 'Import Growth Rate']"
                                    :y-formatter="(tick, i) => {
      return typeof tick === 'number'
        ? `$ ${new Intl.NumberFormat('us').format(tick).toString()}`
        : ''
    }"
                                />
                            </CardContent>
                        </Card>
                        <Card class="sm:col-span-2 md:col-span-3">
                            <CardHeader>
                                <CardTitle>Recent Salesdd</CardTitle>
                                <CardDescription>
                                    You made 265 sales this month.
                                </CardDescription>
                            </CardHeader>
                            <CardContent>
                                <RecentSales />
                            </CardContent>
                        </Card>
                    </div>



                </TabsContent>
            </Tabs>
        </div>
    </div>
    </AuthenticatedLayout>
</template>
