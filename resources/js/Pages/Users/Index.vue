<!--<template>-->
<!--    <Head title="Index"/>-->

<!--    <AuthenticatedLayout>-->
<!--        <template #header>-->
<!--            <h2 class="font-semibold text-xl leading-tight">Dashboard</h2>-->
<!--        </template>-->

<!--        <div class="py-12">-->
<!--&lt;!&ndash;            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">&ndash;&gt;-->
<!--&lt;!&ndash;                <div class=" overflow-hidden shadow-sm sm:rounded-lg">&ndash;&gt;-->
<!--&lt;!&ndash;                    <div class="p-6 font-bold">&ndash;&gt;-->
<!--&lt;!&ndash;                        <div>&ndash;&gt;-->
<!--&lt;!&ndash;                            <h1 class="text-2xl font-bold mb-4">Users</h1>&ndash;&gt;-->
<!--&lt;!&ndash;                            <Link :href="route('admin.users.create')" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mb-4">&ndash;&gt;-->
<!--&lt;!&ndash;                                Create New User&ndash;&gt;-->
<!--&lt;!&ndash;                            </Link>&ndash;&gt;-->
<!--&lt;!&ndash;                            <table class="min-w-full bg-white">&ndash;&gt;-->
<!--&lt;!&ndash;                                <thead>&ndash;&gt;-->
<!--&lt;!&ndash;                                <tr>&ndash;&gt;-->
<!--&lt;!&ndash;                                    <th class="py-2 px-4 border-b">Name</th>&ndash;&gt;-->
<!--&lt;!&ndash;                                    <th class="py-2 px-4 border-b">Email</th>&ndash;&gt;-->
<!--&lt;!&ndash;                                    <th class="py-2 px-4 border-b">Actions</th>&ndash;&gt;-->
<!--&lt;!&ndash;                                </tr>&ndash;&gt;-->
<!--&lt;!&ndash;                                </thead>&ndash;&gt;-->
<!--&lt;!&ndash;                                <tbody>&ndash;&gt;-->
<!--&lt;!&ndash;                                <tr v-for="user in users" :key="user.id">&ndash;&gt;-->
<!--&lt;!&ndash;                                    <td class="py-2 px-4 border-b">{{ user.name }}</td>&ndash;&gt;-->
<!--&lt;!&ndash;                                    <td class="py-2 px-4 border-b">{{ user.email }}</td>&ndash;&gt;-->
<!--&lt;!&ndash;                                    <td class="py-2 px-4 border-b">&ndash;&gt;-->
<!--&lt;!&ndash;                                        <Link :href="route('admin.users.edit', user.id)" class="text-blue-600 hover:text-blue-800 mr-2">Edit</Link>&ndash;&gt;-->
<!--&lt;!&ndash;                                        <Link :href="route('admin.users.show', user.id)" class="text-green-600 hover:text-green-800 mr-2">View</Link>&ndash;&gt;-->
<!--&lt;!&ndash;                                        <button @click="deleteUser(user.id)" class="text-red-600 hover:text-red-800">Delete</button>&ndash;&gt;-->
<!--&lt;!&ndash;                                    </td>&ndash;&gt;-->
<!--&lt;!&ndash;                                </tr>&ndash;&gt;-->
<!--&lt;!&ndash;                                </tbody>&ndash;&gt;-->
<!--&lt;!&ndash;                            </table>&ndash;&gt;-->
<!--&lt;!&ndash;                        </div>&ndash;&gt;-->
<!--&lt;!&ndash;                    </div>&ndash;&gt;-->
<!--&lt;!&ndash;                </div>&ndash;&gt;-->
<!--&lt;!&ndash;            </div>&ndash;&gt;-->

<!--                <div class="flex min-h-screen w-full flex-col bg-muted/40">-->
<!--                    <aside class="fixed inset-y-0 left-0 z-10 hidden w-14 flex-col border-r bg-background sm:flex">-->
<!--                        <nav class="flex flex-col items-center gap-4 px-2 py-4">-->
<!--                            <a-->
<!--                                href="#"-->
<!--                                class="group flex h-9 w-9 shrink-0 items-center justify-center gap-2 rounded-full bg-primary text-lg font-semibold text-primary-foreground md:h-8 md:w-8 md:text-base"-->
<!--                            >-->
<!--                                <Package2 class="h-4 w-4 transition-all group-hover:scale-110" />-->
<!--                                <span class="sr-only">Acme Inc</span>-->
<!--                            </a>-->
<!--                            <TooltipProvider>-->
<!--                                <Tooltip>-->
<!--                                    <TooltipTrigger as-child>-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="flex h-9 w-9 items-center justify-center rounded-lg text-muted-foreground transition-colors hover:text-foreground md:h-8 md:w-8"-->
<!--                                        >-->
<!--                                            <Home class="h-5 w-5" />-->
<!--                                            <span class="sr-only">Dashboard</span>-->
<!--                                        </a>-->
<!--                                    </TooltipTrigger>-->
<!--                                    <TooltipContent side="right">-->
<!--                                        Dashboard-->
<!--                                    </TooltipContent>-->
<!--                                </Tooltip>-->
<!--                            </TooltipProvider>-->
<!--                            <TooltipProvider>-->
<!--                                <Tooltip>-->
<!--                                    <TooltipTrigger as-child>-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="flex h-9 w-9 items-center justify-center rounded-lg transition-colors hover:text-foreground md:h-8 md:w-8"-->
<!--                                        >-->
<!--                                            <ShoppingCart class="h-5 w-5" />-->
<!--                                            <span class="sr-only">Orders</span>-->
<!--                                        </a>-->
<!--                                    </TooltipTrigger>-->
<!--                                    <TooltipContent side="right">-->
<!--                                        Orders-->
<!--                                    </TooltipContent>-->
<!--                                </Tooltip>-->
<!--                            </TooltipProvider>-->
<!--                            <TooltipProvider>-->
<!--                                <Tooltip>-->
<!--                                    <TooltipTrigger as-child>-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="flex h-9 w-9 items-center justify-center rounded-lg bg-accent text-accent-foreground transition-colors hover:text-foreground md:h-8 md:w-8"-->
<!--                                        >-->
<!--                                            <Package class="h-5 w-5" />-->
<!--                                            <span class="sr-only">Products</span>-->
<!--                                        </a>-->
<!--                                    </TooltipTrigger>-->
<!--                                    <TooltipContent side="right">-->
<!--                                        Products-->
<!--                                    </TooltipContent>-->
<!--                                </Tooltip>-->
<!--                            </TooltipProvider>-->
<!--                            <TooltipProvider>-->
<!--                                <Tooltip>-->
<!--                                    <TooltipTrigger as-child>-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="flex h-9 w-9 items-center justify-center rounded-lg text-muted-foreground transition-colors hover:text-foreground md:h-8 md:w-8"-->
<!--                                        >-->
<!--                                            <Users2 class="h-5 w-5" />-->
<!--                                            <span class="sr-only">Customers</span>-->
<!--                                        </a>-->
<!--                                    </TooltipTrigger>-->
<!--                                    <TooltipContent side="right">-->
<!--                                        Customers-->
<!--                                    </TooltipContent>-->
<!--                                </Tooltip>-->
<!--                            </TooltipProvider>-->
<!--                            <TooltipProvider>-->
<!--                                <Tooltip>-->
<!--                                    <TooltipTrigger as-child>-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="flex h-9 w-9 items-center justify-center rounded-lg text-muted-foreground transition-colors hover:text-foreground md:h-8 md:w-8"-->
<!--                                        >-->
<!--                                            <LineChart class="h-5 w-5" />-->
<!--                                            <span class="sr-only">Analytics</span>-->
<!--                                        </a>-->
<!--                                    </TooltipTrigger>-->
<!--                                    <TooltipContent side="right">-->
<!--                                        Analytics-->
<!--                                    </TooltipContent>-->
<!--                                </Tooltip>-->
<!--                            </TooltipProvider>-->
<!--                        </nav>-->
<!--                        <nav class="mt-auto flex flex-col items-center gap-4 px-2 py-4">-->
<!--                            <TooltipProvider>-->
<!--                                <Tooltip>-->
<!--                                    <TooltipTrigger as-child>-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="flex h-9 w-9 items-center justify-center rounded-lg text-muted-foreground transition-colors hover:text-foreground md:h-8 md:w-8"-->
<!--                                        >-->
<!--                                            <Settings class="h-5 w-5" />-->
<!--                                            <span class="sr-only">Settings</span>-->
<!--                                        </a>-->
<!--                                    </TooltipTrigger>-->
<!--                                    <TooltipContent side="right">-->
<!--                                        Settings-->
<!--                                    </TooltipContent>-->
<!--                                </Tooltip>-->
<!--                            </TooltipProvider>-->
<!--                        </nav>-->
<!--                    </aside>-->
<!--                    <div class="flex flex-col sm:gap-4 sm:py-4 sm:pl-14">-->
<!--                        <header class="sticky top-0 z-30 flex h-14 items-center gap-4 border-b bg-background px-4 sm:static sm:h-auto sm:border-0 sm:bg-transparent sm:px-6">-->
<!--                            <Sheet>-->
<!--                                <SheetTrigger as-child>-->
<!--                                    <Button size="icon" variant="outline" class="sm:hidden">-->
<!--                                        <PanelLeft class="h-5 w-5" />-->
<!--                                        <span class="sr-only">Toggle Menu</span>-->
<!--                                    </Button>-->
<!--                                </SheetTrigger>-->
<!--                                <SheetContent side="left" class="sm:max-w-xs">-->
<!--                                    <nav class="grid gap-6 text-lg font-medium">-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="group flex h-10 w-10 shrink-0 items-center justify-center gap-2 rounded-full bg-primary text-lg font-semibold text-primary-foreground md:text-base"-->
<!--                                        >-->
<!--                                            <Package2 class="h-5 w-5 transition-all group-hover:scale-110" />-->
<!--                                            <span class="sr-only">Acme Inc</span>-->
<!--                                        </a>-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="flex items-center gap-4 px-2.5 text-muted-foreground hover:text-foreground"-->
<!--                                        >-->
<!--                                            <Home class="h-5 w-5" />-->
<!--                                            Dashboard-->
<!--                                        </a>-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="flex items-center gap-4 px-2.5 text-muted-foreground hover:text-foreground"-->
<!--                                        >-->
<!--                                            <ShoppingCart class="h-5 w-5" />-->
<!--                                            Orders-->
<!--                                        </a>-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="flex items-center gap-4 px-2.5 text-foreground"-->
<!--                                        >-->
<!--                                            <Package class="h-5 w-5" />-->
<!--                                            Products-->
<!--                                        </a>-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="flex items-center gap-4 px-2.5 text-muted-foreground hover:text-foreground"-->
<!--                                        >-->
<!--                                            <Users2 class="h-5 w-5" />-->
<!--                                            Customers-->
<!--                                        </a>-->
<!--                                        <a-->
<!--                                            href="#"-->
<!--                                            class="flex items-center gap-4 px-2.5 text-muted-foreground hover:text-foreground"-->
<!--                                        >-->
<!--                                            <LineChart class="h-5 w-5" />-->
<!--                                            Settings-->
<!--                                        </a>-->
<!--                                    </nav>-->
<!--                                </SheetContent>-->
<!--                            </Sheet>-->
<!--                            <Breadcrumb class="hidden md:flex">-->
<!--                                <BreadcrumbList>-->
<!--                                    <BreadcrumbItem>-->
<!--                                        <BreadcrumbLink as-child>-->
<!--                                            <a href="#">Dashboard</a>-->
<!--                                        </BreadcrumbLink>-->
<!--                                    </BreadcrumbItem>-->
<!--                                    <BreadcrumbSeparator />-->
<!--                                    <BreadcrumbItem>-->
<!--                                        <BreadcrumbLink as-child>-->
<!--                                            <a href="#">Products</a>-->
<!--                                        </BreadcrumbLink>-->
<!--                                    </BreadcrumbItem>-->
<!--                                    <BreadcrumbSeparator />-->
<!--                                    <BreadcrumbItem>-->
<!--                                        <BreadcrumbPage>All Products</BreadcrumbPage>-->
<!--                                    </BreadcrumbItem>-->
<!--                                </BreadcrumbList>-->
<!--                            </Breadcrumb>-->
<!--                            <div class="relative ml-auto flex-1 md:grow-0">-->
<!--                                <Search class="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />-->
<!--                                <Input-->
<!--                                    type="search"-->
<!--                                    placeholder="Search..."-->
<!--                                    class="w-full rounded-lg bg-background pl-8 md:w-[200px] lg:w-[320px]"-->
<!--                                />-->
<!--                            </div>-->
<!--                            <DropdownMenu>-->
<!--                                <DropdownMenuTrigger as-child>-->
<!--                                    <Button variant="secondary" size="icon" class="rounded-full">-->
<!--                                        <CircleUser class="h-5 w-5" />-->
<!--                                        <span class="sr-only">Toggle user menu</span>-->
<!--                                    </Button>-->
<!--                                </DropdownMenuTrigger>-->
<!--                                <DropdownMenuContent align="end">-->
<!--                                    <DropdownMenuLabel>My Account</DropdownMenuLabel>-->
<!--                                    <DropdownMenuSeparator />-->
<!--                                    <DropdownMenuItem>Settings</DropdownMenuItem>-->
<!--                                    <DropdownMenuItem>Support</DropdownMenuItem>-->
<!--                                    <DropdownMenuSeparator />-->
<!--                                    <DropdownMenuItem>Logout</DropdownMenuItem>-->
<!--                                </DropdownMenuContent>-->
<!--                            </DropdownMenu>-->
<!--                        </header>-->
<!--                        <main class="grid flex-1 items-start gap-4 p-4 sm:px-6 sm:py-0 md:gap-8">-->
<!--                            <Tabs default-value="all">-->
<!--                                <div class="flex items-center">-->
<!--                                    <TabsList>-->
<!--                                        <TabsTrigger value="all">-->
<!--                                            All-->
<!--                                        </TabsTrigger>-->
<!--                                        <TabsTrigger value="active">-->
<!--                                            Active-->
<!--                                        </TabsTrigger>-->
<!--                                        <TabsTrigger value="draft">-->
<!--                                            Draft-->
<!--                                        </TabsTrigger>-->
<!--                                        <TabsTrigger value="archived" class="hidden sm:flex">-->
<!--                                            Archived-->
<!--                                        </TabsTrigger>-->
<!--                                    </TabsList>-->
<!--                                    <div class="ml-auto flex items-center gap-2">-->
<!--                                        <DropdownMenu>-->
<!--                                            <DropdownMenuTrigger as-child>-->
<!--                                                <Button variant="outline" size="sm" class="h-7 gap-1">-->
<!--                                                    <ListFilter class="h-3.5 w-3.5" />-->
<!--                                                    <span class="sr-only sm:not-sr-only sm:whitespace-nowrap">-->
<!--                      Filter-->
<!--                    </span>-->
<!--                                                </Button>-->
<!--                                            </DropdownMenuTrigger>-->
<!--                                            <DropdownMenuContent align="end">-->
<!--                                                <DropdownMenuLabel>Filter by</DropdownMenuLabel>-->
<!--                                                <DropdownMenuSeparator />-->
<!--                                                <DropdownMenuItem checked>-->
<!--                                                    Active-->
<!--                                                </DropdownMenuItem>-->
<!--                                                <DropdownMenuItem>Draft</DropdownMenuItem>-->
<!--                                                <DropdownMenuItem>-->
<!--                                                    Archived-->
<!--                                                </DropdownMenuItem>-->
<!--                                            </DropdownMenuContent>-->
<!--                                        </DropdownMenu>-->
<!--                                        <Button size="sm" variant="outline" class="h-7 gap-1">-->
<!--                                            <File class="h-3.5 w-3.5" />-->
<!--                                            <span class="sr-only sm:not-sr-only sm:whitespace-nowrap">-->
<!--                  Export-->
<!--                </span>-->
<!--                                        </Button>-->
<!--                                        <Button size="sm" class="h-7 gap-1">-->
<!--                                            <PlusCircle class="h-3.5 w-3.5" />-->
<!--                                            <span class="sr-only sm:not-sr-only sm:whitespace-nowrap">-->
<!--                  Add Product-->
<!--                </span>-->
<!--                                        </Button>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                                <TabsContent value="all">-->
<!--                                    <Card>-->
<!--                                        <CardHeader>-->
<!--                                            <CardTitle>Products</CardTitle>-->
<!--                                            <CardDescription>-->
<!--                                                Manage your products and view their sales performance.-->
<!--                                            </CardDescription>-->
<!--                                        </CardHeader>-->
<!--                                        <CardContent>-->
<!--                                            <Table>-->
<!--                                                <TableHeader>-->
<!--                                                    <TableRow>-->
<!--                                                        <TableHead class="hidden w-[100px] sm:table-cell">-->
<!--                                                            <span class="sr-only">img</span>-->
<!--                                                        </TableHead>-->
<!--                                                        <TableHead>Name</TableHead>-->
<!--                                                        <TableHead>Status</TableHead>-->
<!--                                                        <TableHead class="hidden md:table-cell">-->
<!--                                                            Price-->
<!--                                                        </TableHead>-->
<!--                                                        <TableHead class="hidden md:table-cell">-->
<!--                                                            Total Sales-->
<!--                                                        </TableHead>-->
<!--                                                        <TableHead class="hidden md:table-cell">-->
<!--                                                            Created at-->
<!--                                                        </TableHead>-->
<!--                                                        <TableHead>-->
<!--                                                            <span class="sr-only">Actions</span>-->
<!--                                                        </TableHead>-->
<!--                                                    </TableRow>-->
<!--                                                </TableHeader>-->
<!--                                                <TableBody>-->
<!--                                                    <TableRow>-->
<!--                                                        <TableCell class="hidden sm:table-cell">-->
<!--                                                            <img-->
<!--                                                                alt="Product image"-->
<!--                                                                class="aspect-square rounded-md object-cover"-->
<!--                                                                height="64"-->
<!--                                                                src="/placeholder.svg"-->
<!--                                                                width="64"-->
<!--                                                            >-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="font-medium">-->
<!--                                                            Laser Lemonade Machine-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <Badge variant="outline">-->
<!--                                                                Draft-->
<!--                                                            </Badge>-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            $499.99-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            25-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            2023-07-12 10:42 AM-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <DropdownMenu>-->
<!--                                                                <DropdownMenuTrigger as-child>-->
<!--                                                                    <Button-->
<!--                                                                        aria-haspopup="true"-->
<!--                                                                        size="icon"-->
<!--                                                                        variant="ghost"-->
<!--                                                                    >-->
<!--                                                                        <MoreHorizontal class="h-4 w-4" />-->
<!--                                                                        <span class="sr-only">Toggle menu</span>-->
<!--                                                                    </Button>-->
<!--                                                                </DropdownMenuTrigger>-->
<!--                                                                <DropdownMenuContent align="end">-->
<!--                                                                    <DropdownMenuLabel>Actions</DropdownMenuLabel>-->
<!--                                                                    <DropdownMenuItem>Edit</DropdownMenuItem>-->
<!--                                                                    <DropdownMenuItem>Delete</DropdownMenuItem>-->
<!--                                                                </DropdownMenuContent>-->
<!--                                                            </DropdownMenu>-->
<!--                                                        </TableCell>-->
<!--                                                    </TableRow>-->
<!--                                                    <TableRow>-->
<!--                                                        <TableCell class="hidden sm:table-cell">-->
<!--                                                            <img-->
<!--                                                                alt="Product image"-->
<!--                                                                class="aspect-square rounded-md object-cover"-->
<!--                                                                height="64"-->
<!--                                                                src="/placeholder.svg"-->
<!--                                                                width="64"-->
<!--                                                            >-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="font-medium">-->
<!--                                                            Hypernova Headphones-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <Badge variant="outline">-->
<!--                                                                Active-->
<!--                                                            </Badge>-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            $129.99-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            100-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            2023-10-18 03:21 PM-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <DropdownMenu>-->
<!--                                                                <DropdownMenuTrigger as-child>-->
<!--                                                                    <Button-->
<!--                                                                        aria-haspopup="true"-->
<!--                                                                        size="icon"-->
<!--                                                                        variant="ghost"-->
<!--                                                                    >-->
<!--                                                                        <MoreHorizontal class="h-4 w-4" />-->
<!--                                                                        <span class="sr-only">Toggle menu</span>-->
<!--                                                                    </Button>-->
<!--                                                                </DropdownMenuTrigger>-->
<!--                                                                <DropdownMenuContent align="end">-->
<!--                                                                    <DropdownMenuLabel>Actions</DropdownMenuLabel>-->
<!--                                                                    <DropdownMenuItem>Edit</DropdownMenuItem>-->
<!--                                                                    <DropdownMenuItem>Delete</DropdownMenuItem>-->
<!--                                                                </DropdownMenuContent>-->
<!--                                                            </DropdownMenu>-->
<!--                                                        </TableCell>-->
<!--                                                    </TableRow>-->
<!--                                                    <TableRow>-->
<!--                                                        <TableCell class="hidden sm:table-cell">-->
<!--                                                            <img-->
<!--                                                                alt="Product image"-->
<!--                                                                class="aspect-square rounded-md object-cover"-->
<!--                                                                height="64"-->
<!--                                                                src="/placeholder.svg"-->
<!--                                                                width="64"-->
<!--                                                            >-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="font-medium">-->
<!--                                                            AeroGlow Desk Lamp-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <Badge variant="outline">-->
<!--                                                                Active-->
<!--                                                            </Badge>-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            $39.99-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            50-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            2023-11-29 08:15 AM-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <DropdownMenu>-->
<!--                                                                <DropdownMenuTrigger as-child>-->
<!--                                                                    <Button-->
<!--                                                                        aria-haspopup="true"-->
<!--                                                                        size="icon"-->
<!--                                                                        variant="ghost"-->
<!--                                                                    >-->
<!--                                                                        <MoreHorizontal class="h-4 w-4" />-->
<!--                                                                        <span class="sr-only">Toggle menu</span>-->
<!--                                                                    </Button>-->
<!--                                                                </DropdownMenuTrigger>-->
<!--                                                                <DropdownMenuContent align="end">-->
<!--                                                                    <DropdownMenuLabel>Actions</DropdownMenuLabel>-->
<!--                                                                    <DropdownMenuItem>Edit</DropdownMenuItem>-->
<!--                                                                    <DropdownMenuItem>Delete</DropdownMenuItem>-->
<!--                                                                </DropdownMenuContent>-->
<!--                                                            </DropdownMenu>-->
<!--                                                        </TableCell>-->
<!--                                                    </TableRow>-->
<!--                                                    <TableRow>-->
<!--                                                        <TableCell class="hidden sm:table-cell">-->
<!--                                                            <img-->
<!--                                                                alt="Product image"-->
<!--                                                                class="aspect-square rounded-md object-cover"-->
<!--                                                                height="64"-->
<!--                                                                src="/placeholder.svg"-->
<!--                                                                width="64"-->
<!--                                                            >-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="font-medium">-->
<!--                                                            TechTonic Energy Drink-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <Badge variant="secondary">-->
<!--                                                                Draft-->
<!--                                                            </Badge>-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            $2.99-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            0-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            2023-12-25 11:59 PM-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <DropdownMenu>-->
<!--                                                                <DropdownMenuTrigger as-child>-->
<!--                                                                    <Button-->
<!--                                                                        aria-haspopup="true"-->
<!--                                                                        size="icon"-->
<!--                                                                        variant="ghost"-->
<!--                                                                    >-->
<!--                                                                        <MoreHorizontal class="h-4 w-4" />-->
<!--                                                                        <span class="sr-only">Toggle menu</span>-->
<!--                                                                    </Button>-->
<!--                                                                </DropdownMenuTrigger>-->
<!--                                                                <DropdownMenuContent align="end">-->
<!--                                                                    <DropdownMenuLabel>Actions</DropdownMenuLabel>-->
<!--                                                                    <DropdownMenuItem>Edit</DropdownMenuItem>-->
<!--                                                                    <DropdownMenuItem>Delete</DropdownMenuItem>-->
<!--                                                                </DropdownMenuContent>-->
<!--                                                            </DropdownMenu>-->
<!--                                                        </TableCell>-->
<!--                                                    </TableRow>-->
<!--                                                    <TableRow>-->
<!--                                                        <TableCell class="hidden sm:table-cell">-->
<!--                                                            <img-->
<!--                                                                alt="Product image"-->
<!--                                                                class="aspect-square rounded-md object-cover"-->
<!--                                                                height="64"-->
<!--                                                                src="/placeholder.svg"-->
<!--                                                                width="64"-->
<!--                                                            >-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="font-medium">-->
<!--                                                            Gamer Gear Pro Controller-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <Badge variant="outline">-->
<!--                                                                Active-->
<!--                                                            </Badge>-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            $59.99-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            75-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            2024-01-01 12:00 AM-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <DropdownMenu>-->
<!--                                                                <DropdownMenuTrigger as-child>-->
<!--                                                                    <Button-->
<!--                                                                        aria-haspopup="true"-->
<!--                                                                        size="icon"-->
<!--                                                                        variant="ghost"-->
<!--                                                                    >-->
<!--                                                                        <MoreHorizontal class="h-4 w-4" />-->
<!--                                                                        <span class="sr-only">Toggle menu</span>-->
<!--                                                                    </Button>-->
<!--                                                                </DropdownMenuTrigger>-->
<!--                                                                <DropdownMenuContent align="end">-->
<!--                                                                    <DropdownMenuLabel>Actions</DropdownMenuLabel>-->
<!--                                                                    <DropdownMenuItem>Edit</DropdownMenuItem>-->
<!--                                                                    <DropdownMenuItem>Delete</DropdownMenuItem>-->
<!--                                                                </DropdownMenuContent>-->
<!--                                                            </DropdownMenu>-->
<!--                                                        </TableCell>-->
<!--                                                    </TableRow>-->
<!--                                                    <TableRow>-->
<!--                                                        <TableCell class="hidden sm:table-cell">-->
<!--                                                            <img-->
<!--                                                                alt="Product image"-->
<!--                                                                class="aspect-square rounded-md object-cover"-->
<!--                                                                height="64"-->
<!--                                                                src="/placeholder.svg"-->
<!--                                                                width="64"-->
<!--                                                            >-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="font-medium">-->
<!--                                                            Luminous VR Headset-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <Badge variant="outline">-->
<!--                                                                Active-->
<!--                                                            </Badge>-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            $199.99-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            30-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell class="hidden md:table-cell">-->
<!--                                                            2024-02-14 02:14 PM-->
<!--                                                        </TableCell>-->
<!--                                                        <TableCell>-->
<!--                                                            <DropdownMenu>-->
<!--                                                                <DropdownMenuTrigger as-child>-->
<!--                                                                    <Button-->
<!--                                                                        aria-haspopup="true"-->
<!--                                                                        size="icon"-->
<!--                                                                        variant="ghost"-->
<!--                                                                    >-->
<!--                                                                        <MoreHorizontal class="h-4 w-4" />-->
<!--                                                                        <span class="sr-only">Toggle menu</span>-->
<!--                                                                    </Button>-->
<!--                                                                </DropdownMenuTrigger>-->
<!--                                                                <DropdownMenuContent align="end">-->
<!--                                                                    <DropdownMenuLabel>Actions</DropdownMenuLabel>-->
<!--                                                                    <DropdownMenuItem>Edit</DropdownMenuItem>-->
<!--                                                                    <DropdownMenuItem>Delete</DropdownMenuItem>-->
<!--                                                                </DropdownMenuContent>-->
<!--                                                            </DropdownMenu>-->
<!--                                                        </TableCell>-->
<!--                                                    </TableRow>-->
<!--                                                </TableBody>-->
<!--                                            </Table>-->
<!--                                        </CardContent>-->
<!--                                        <CardFooter>-->
<!--                                            <div class="text-xs text-muted-foreground">-->
<!--                                                Showing <strong>1-10</strong> of <strong>32</strong>-->
<!--                                                products-->
<!--                                            </div>-->
<!--                                        </CardFooter>-->
<!--                                    </Card>-->
<!--                                </TabsContent>-->
<!--                            </Tabs>-->
<!--                        </main>-->
<!--                    </div>-->
<!--                </div>-->

<!--        </div>-->
<!--    </AuthenticatedLayout>-->
<!--</template>-->

<!--<script setup lang="ts">-->
<!--import {Head, Link} from '@inertiajs/vue3';-->
<!--import { useForm } from '@inertiajs/vue3';-->
<!--import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";-->

<!--const props = defineProps({-->
<!--    users: Array-->
<!--});-->

<!--const form = useForm({});-->

<!--const deleteUser = (id) => {-->
<!--    if (confirm('Are you sure you want to delete this user?')) {-->
<!--        form.delete(route('admin.users.destroy', id));-->
<!--    }-->
<!--};-->

<!--import {-->
<!--    CircleUser,-->
<!--    File,-->
<!--    Home,-->
<!--    LineChart,-->
<!--    ListFilter,-->
<!--    MoreHorizontal,-->
<!--    Package,-->
<!--    Package2,-->
<!--    PanelLeft,-->
<!--    PlusCircle,-->
<!--    Search,-->
<!--    Settings,-->
<!--    ShoppingCart,-->
<!--    Users2,-->
<!--} from 'lucide-vue-next'-->

<!--import { Badge } from '@/components/ui/badge'-->
<!--import { Button } from '@/components/ui/button'-->
<!--import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'-->
<!--import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuLabel, DropdownMenuSeparator, DropdownMenuTrigger } from '@/components/ui/dropdown-menu'-->
<!--import { Input } from '@/components/ui/input'-->
<!--import {-->
<!--    Breadcrumb,-->
<!--    BreadcrumbItem,-->
<!--    BreadcrumbLink,-->
<!--    BreadcrumbList,-->
<!--    BreadcrumbPage,-->
<!--    BreadcrumbSeparator,-->
<!--} from '@/components/ui/breadcrumb'-->
<!--import { Sheet, SheetContent, SheetTrigger } from '@/components/ui/sheet'-->
<!--import {-->
<!--    Table,-->
<!--    TableBody,-->
<!--    TableCell,-->
<!--    TableHead,-->
<!--    TableHeader,-->
<!--    TableRow,-->
<!--} from '@/components/ui/table'-->
<!--import {-->
<!--    Tabs,-->
<!--    TabsContent,-->
<!--    TabsList,-->
<!--    TabsTrigger,-->
<!--} from '@/components/ui/tabs'-->
<!--import {-->
<!--    Tooltip,-->
<!--    TooltipContent,-->
<!--    TooltipProvider,-->
<!--    TooltipTrigger,-->
<!--} from '@/components/ui/tooltip'-->
<!--</script>-->


<!--<template>-->
<!--    <Head title="User Management"/>-->

<!--    <AuthenticatedLayout>-->
<!--        <template #header>-->
<!--            <h2 class="font-semibold text-xl leading-tight">User Management</h2>-->
<!--        </template>-->

<!--        <div class="py-12">-->
<!--            <div class="flex min-h-screen w-full flex-col bg-muted/40">-->
<!--                &lt;!&ndash; Sidebar code remains the same &ndash;&gt;-->

<!--                <div class="flex flex-col sm:gap-4 sm:py-4 sm:pl-14">-->
<!--                    &lt;!&ndash; Header code remains the same &ndash;&gt;-->

<!--                    <main class="grid flex-1 items-start gap-4 p-4 sm:px-6 sm:py-0 md:gap-8">-->
<!--                        <Tabs default-value="all">-->
<!--                            <div class="flex items-center">-->
<!--                                <TabsList>-->
<!--                                    <TabsTrigger value="all">All Users</TabsTrigger>-->
<!--                                    <TabsTrigger value="active">Active</TabsTrigger>-->
<!--                                    <TabsTrigger value="inactive">Inactive</TabsTrigger>-->
<!--                                </TabsList>-->
<!--                                <div class="ml-auto flex items-center gap-2">-->
<!--                                    <Button @click="openCreateUserModal" size="sm" class="h-7 gap-1">-->
<!--                                        <PlusCircle class="h-3.5 w-3.5" />-->
<!--                                        <span class="sr-only sm:not-sr-only sm:whitespace-nowrap">Add User</span>-->
<!--                                    </Button>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                            <TabsContent value="all">-->
<!--                                <Card>-->
<!--                                    <CardHeader>-->
<!--                                        <CardTitle>Users</CardTitle>-->
<!--                                        <CardDescription>Manage your users and their access.</CardDescription>-->
<!--                                    </CardHeader>-->
<!--                                    <CardContent>-->
<!--                                        <Table>-->
<!--                                            <TableHeader>-->
<!--                                                <TableRow>-->
<!--                                                    <TableHead>Name</TableHead>-->
<!--                                                    <TableHead>Email</TableHead>-->
<!--                                                    <TableHead>Status</TableHead>-->
<!--                                                    <TableHead>Created at</TableHead>-->
<!--                                                    <TableHead>Actions</TableHead>-->
<!--                                                </TableRow>-->
<!--                                            </TableHeader>-->
<!--                                            <TableBody>-->
<!--                                                <TableRow v-for="user in users" :key="user.id">-->
<!--                                                    <TableCell class="font-medium">{{ user.name }}</TableCell>-->
<!--                                                    <TableCell>{{ user.email }}</TableCell>-->
<!--                                                    <TableCell>-->
<!--                                                        <Badge :variant="user.email_verified_at ? 'outline' : 'secondary'">-->
<!--                                                            {{ user.email_verified_at ? 'Active' : 'Inactive' }}-->
<!--                                                        </Badge>-->
<!--                                                    </TableCell>-->
<!--                                                    <TableCell>{{ formatDate(user.created_at) }}</TableCell>-->
<!--                                                    <TableCell>-->
<!--                                                        <DropdownMenu>-->
<!--                                                            <DropdownMenuTrigger as-child>-->
<!--                                                                <Button size="icon" variant="ghost">-->
<!--                                                                    <MoreHorizontal class="h-4 w-4" />-->
<!--                                                                    <span class="sr-only">Open menu</span>-->
<!--                                                                </Button>-->
<!--                                                            </DropdownMenuTrigger>-->
<!--                                                            <DropdownMenuContent align="end">-->
<!--                                                                <DropdownMenuItem @click="editUser(user)">Edit</DropdownMenuItem>-->
<!--                                                                <DropdownMenuItem @click="deleteUser(user.id)">Delete</DropdownMenuItem>-->
<!--                                                            </DropdownMenuContent>-->
<!--                                                        </DropdownMenu>-->
<!--                                                    </TableCell>-->
<!--                                                </TableRow>-->
<!--                                            </TableBody>-->
<!--                                        </Table>-->
<!--                                    </CardContent>-->
<!--                                </Card>-->
<!--                            </TabsContent>-->
<!--                        </Tabs>-->
<!--                    </main>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </AuthenticatedLayout>-->
<!--</template>-->

<!--<script setup lang="ts">-->
<!--import { ref } from 'vue';-->
<!--import { Head, Link } from '@inertiajs/vue3';-->
<!--import { useForm } from '@inertiajs/vue3';-->
<!--import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";-->
<!--import {-->
<!--    CircleUser, File, Home, LineChart, ListFilter, MoreHorizontal,-->
<!--    Package, Package2, PanelLeft, PlusCircle, Search, Settings,-->
<!--    ShoppingCart, Users2-->
<!--} from 'lucide-vue-next';-->
<!--import { Badge } from '@/components/ui/badge';-->
<!--import { Button } from '@/components/ui/button';-->
<!--import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from '@/components/ui/card';-->
<!--import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuLabel, DropdownMenuSeparator, DropdownMenuTrigger } from '@/components/ui/dropdown-menu';-->
<!--import { Input } from '@/components/ui/input';-->
<!--import { Breadcrumb, BreadcrumbItem, BreadcrumbLink, BreadcrumbList, BreadcrumbPage, BreadcrumbSeparator } from '@/components/ui/breadcrumb';-->
<!--import { Sheet, SheetContent, SheetTrigger } from '@/components/ui/sheet';-->
<!--import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table';-->
<!--import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';-->
<!--import { Tooltip, TooltipContent, TooltipProvider, TooltipTrigger } from '@/components/ui/tooltip';-->

<!--const props = defineProps({-->
<!--    users: Array-->
<!--});-->

<!--const form = useForm({-->
<!--    name: '',-->
<!--    email: '',-->
<!--    password: '',-->
<!--    password_confirmation: ''-->
<!--});-->

<!--const deleteUser = (id) => {-->
<!--    if (confirm('Are you sure you want to delete this user?')) {-->
<!--        form.delete(route('admin.users.destroy', id));-->
<!--    }-->
<!--};-->

<!--const editUser = (user) => {-->
<!--    // Implement edit user logic-->
<!--    console.log('Edit user:', user);-->
<!--};-->

<!--const openCreateUserModal = () => {-->
<!--    // Implement open create user modal logic-->
<!--    console.log('Open create user modal');-->
<!--};-->

<!--const formatDate = (dateString) => {-->
<!--    return new Date(dateString).toLocaleDateString();-->
<!--};-->
<!--</script>-->


<!--<template>-->
<!--    <Head title="User Management"/>-->

<!--    <AuthenticatedLayout>-->
<!--        <template #header>-->
<!--            <h2 class="font-semibold text-xl leading-tight">User Management</h2>-->
<!--        </template>-->

<!--        <div class="py-12">-->
<!--            <div class="flex min-h-screen w-full flex-col bg-muted/40">-->
<!--                &lt;!&ndash; Sidebar code remains the same &ndash;&gt;-->

<!--                <div class="flex flex-col sm:gap-4 sm:py-4 sm:pl-14">-->
<!--                    <header class="sticky top-0 z-30 flex h-14 items-center gap-4 border-b bg-background px-4 sm:static sm:h-auto sm:border-0 sm:bg-transparent sm:px-6">-->
<!--                        &lt;!&ndash; Other header elements remain the same &ndash;&gt;-->
<!--                        <div class="relative ml-auto flex-1 md:grow-0">-->
<!--                            <Search class="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />-->
<!--                            <Input-->
<!--                                type="search"-->
<!--                                placeholder="Search users..."-->
<!--                                class="w-full rounded-lg bg-background pl-8 md:w-[200px] lg:w-[320px]"-->
<!--                                v-model="search"-->
<!--                                @input="searchUsers"-->
<!--                            />-->
<!--                        </div>-->
<!--                    </header>-->

<!--                    <main class="grid flex-1 items-start gap-4 p-4 sm:px-6 sm:py-0 md:gap-8">-->
<!--                        <Card>-->
<!--                            <CardHeader>-->
<!--                                <CardTitle>Users</CardTitle>-->
<!--                                <CardDescription>Manage your users and their access.</CardDescription>-->
<!--                            </CardHeader>-->
<!--                            <CardContent>-->
<!--                                <div class="flex justify-end mb-4">-->
<!--                                    <Button @click="openCreateUserModal" size="sm" class="h-9 gap-1">-->
<!--                                        <PlusCircle class="h-4 w-4" />-->
<!--                                        <span>Add User</span>-->
<!--                                    </Button>-->
<!--                                </div>-->
<!--                                <Table>-->
<!--                                    <TableHeader>-->
<!--                                        <TableRow>-->
<!--                                            <TableHead>Name</TableHead>-->
<!--                                            <TableHead>Email</TableHead>-->
<!--                                            <TableHead>Status</TableHead>-->
<!--                                            <TableHead>Created at</TableHead>-->
<!--                                            <TableHead>Actions</TableHead>-->
<!--                                        </TableRow>-->
<!--                                    </TableHeader>-->
<!--                                    <TableBody>-->
<!--                                        <TableRow v-for="user in filteredUsers" :key="user.id">-->
<!--                                            <TableCell class="font-medium">{{ user.name }}</TableCell>-->
<!--                                            <TableCell>{{ user.email }}</TableCell>-->
<!--                                            <TableCell>-->
<!--                                                <Badge :variant="user.email_verified_at ? 'outline' : 'secondary'">-->
<!--                                                    {{ user.email_verified_at ? 'Verified' : 'Unverified' }}-->
<!--                                                </Badge>-->
<!--                                            </TableCell>-->
<!--                                            <TableCell>{{ formatDate(user.created_at) }}</TableCell>-->
<!--                                            <TableCell>-->
<!--                                                <DropdownMenu>-->
<!--                                                    <DropdownMenuTrigger as-child>-->
<!--                                                        <Button size="icon" variant="ghost">-->
<!--                                                            <MoreHorizontal class="h-4 w-4" />-->
<!--                                                            <span class="sr-only">Open menu</span>-->
<!--                                                        </Button>-->
<!--                                                    </DropdownMenuTrigger>-->
<!--                                                    <DropdownMenuContent align="end">-->
<!--                                                        <DropdownMenuItem @click="editUser(user)">Edit</DropdownMenuItem>-->
<!--                                                        <DropdownMenuItem @click="showUser(user)">View</DropdownMenuItem>-->
<!--                                                        <DropdownMenuItem @click="deleteUser(user.id)">Delete</DropdownMenuItem>-->
<!--                                                    </DropdownMenuContent>-->
<!--                                                </DropdownMenu>-->
<!--                                            </TableCell>-->
<!--                                        </TableRow>-->
<!--                                    </TableBody>-->
<!--                                </Table>-->
<!--                            </CardContent>-->
<!--                        </Card>-->
<!--                    </main>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->



<!--    &lt;!&ndash; Create/Edit User Modal &ndash;&gt;-->
<!--    <Dialog :open="isUserModalOpen" @update:open="closeUserModal">-->
<!--        <DialogContent>-->
<!--            <DialogHeader>-->
<!--                <DialogTitle>{{ isEditing ? 'Edit User' : 'Create User' }}</DialogTitle>-->
<!--            </DialogHeader>-->
<!--            <form @submit.prevent="submitUserForm">-->
<!--                <div class="grid gap-4 py-4">-->
<!--                    <div class="grid grid-cols-4 items-center gap-4">-->
<!--                        <Label for="name" class="text-right">Name</Label>-->
<!--                        <div class="col-span-3">-->
<!--                            <Input id="name" v-model="userForm.name" />-->
<!--                            <InputError :message="userForm.errors.name" class="mt-2" />-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    <div class="grid grid-cols-4 items-center gap-4">-->
<!--                        <Label for="email" class="text-right">Email</Label>-->
<!--                        <div class="col-span-3">-->
<!--                            <Input id="email" type="email" v-model="userForm.email" />-->
<!--                            <InputError :message="userForm.errors.email" class="mt-2" />-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    <div class="grid grid-cols-4 items-center gap-4">-->
<!--                        <Label for="password" class="text-right">-->
<!--                            {{ isEditing ? 'New Password (optional)' : 'Password' }}-->
<!--                        </Label>-->
<!--                        <div class="col-span-3">-->
<!--                            <Input id="password" type="password" v-model="userForm.password" @input="validatePasswords" />-->
<!--                            <InputError :message="userForm.errors.password" class="mt-2" />-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    <div class="grid grid-cols-4 items-center gap-4">-->
<!--                        <Label for="password_confirmation" class="text-right">Confirm Password</Label>-->
<!--                        <div class="col-span-3">-->
<!--                            <Input id="password_confirmation" type="password" v-model="userForm.password_confirmation" @input="validatePasswords" />-->
<!--                            <InputError :message="passwordConfirmationError" class="mt-2" />-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <DialogFooter>-->
<!--                    <Button type="submit" :disabled="!isFormValid">Save</Button>-->
<!--                </DialogFooter>-->
<!--            </form>-->
<!--        </DialogContent>-->
<!--    </Dialog>-->


<!--    &lt;!&ndash; View User Modal &ndash;&gt;-->
<!--    <Dialog :open="isViewUserModalOpen" @update:open="closeViewUserModal">-->
<!--        <DialogContent>-->
<!--            <DialogHeader>-->
<!--                <DialogTitle>User Details</DialogTitle>-->
<!--            </DialogHeader>-->
<!--            <div class="grid gap-4 py-4">-->
<!--                <div class="grid grid-cols-4 items-center gap-4">-->
<!--                    <Label class="text-right font-bold">Name:</Label>-->
<!--                    <span class="col-span-3">{{ selectedUser?.name }}</span>-->
<!--                </div>-->
<!--                <div class="grid grid-cols-4 items-center gap-4">-->
<!--                    <Label class="text-right font-bold">Email:</Label>-->
<!--                    <span class="col-span-3">{{ selectedUser?.email }}</span>-->
<!--                </div>-->
<!--                <div class="grid grid-cols-4 items-center gap-4">-->
<!--                    <Label class="text-right font-bold">Status:</Label>-->
<!--                    <span class="col-span-3">-->
<!--                        <Badge :variant="selectedUser?.email_verified_at ? 'outline' : 'secondary'">-->
<!--                            {{ selectedUser?.email_verified_at ? 'Verified' : 'Unverified' }}-->
<!--                        </Badge>-->
<!--                    </span>-->
<!--                </div>-->
<!--                <div class="grid grid-cols-4 items-center gap-4">-->
<!--                    <Label class="text-right font-bold">Created at:</Label>-->
<!--                    <span class="col-span-3">{{ formatDate(selectedUser?.created_at) }}</span>-->
<!--                </div>-->
<!--            </div>-->
<!--            <DialogFooter>-->
<!--                <Button @click="closeViewUserModal">Close</Button>-->
<!--            </DialogFooter>-->
<!--        </DialogContent>-->
<!--    </Dialog>-->


<!--</AuthenticatedLayout>-->
<!--</template>-->

<!--<script setup lang="ts">-->
<!--import { ref, computed } from 'vue';-->
<!--import { Head } from '@inertiajs/vue3';-->
<!--import { useForm } from '@inertiajs/vue3';-->
<!--import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";-->
<!--import InputError from '@/Components/InputError.vue';-->
<!--import {-->
<!--    CircleUser, MoreHorizontal, PlusCircle, Search-->
<!--} from 'lucide-vue-next';-->
<!--import { Badge } from '@/components/ui/badge';-->
<!--import { Button } from '@/components/ui/button';-->
<!--import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';-->
<!--import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger } from '@/components/ui/dropdown-menu';-->
<!--import { Input } from '@/components/ui/input';-->
<!--import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table';-->
<!--import { Dialog, DialogContent, DialogFooter, DialogHeader, DialogTitle } from '@/components/ui/dialog';-->
<!--import { Label } from '@/components/ui/label';-->

<!--const props = defineProps({-->
<!--    users: Array-->
<!--});-->

<!--const search = ref('');-->
<!--const isUserModalOpen = ref(false);-->
<!--const isViewUserModalOpen = ref(false);-->
<!--const isEditing = ref(false);-->
<!--const selectedUser = ref(null);-->
<!--const passwordConfirmationError = ref('');-->

<!--const userForm = useForm({-->
<!--    id: null,-->
<!--    name: '',-->
<!--    email: '',-->
<!--    password: '',-->
<!--    password_confirmation: ''-->
<!--});-->




<!--const validatePasswords = () => {-->
<!--    if (userForm.password || userForm.password_confirmation) {-->
<!--        if (userForm.password !== userForm.password_confirmation) {-->
<!--            passwordConfirmationError.value = 'The password confirmation does not match.';-->
<!--        } else {-->
<!--            passwordConfirmationError.value = '';-->
<!--        }-->
<!--    } else {-->
<!--        passwordConfirmationError.value = '';-->
<!--    }-->
<!--};-->

<!--const isFormValid = computed(() => {-->
<!--    return userForm.name && userForm.email && !passwordConfirmationError.value &&-->
<!--        (!isEditing.value || (isEditing.value && (!userForm.password || userForm.password === userForm.password_confirmation)));-->
<!--});-->

<!--const closeUserModal = () => {-->
<!--    isUserModalOpen.value = false;-->
<!--    userForm.reset();-->
<!--    passwordConfirmationError.value = '';-->
<!--};-->

<!--const filteredUsers = computed(() => {-->
<!--    if (!search.value) return props.users;-->
<!--    return props.users.filter(user =>-->
<!--        user.name.toLowerCase().includes(search.value.toLowerCase()) ||-->
<!--        user.email.toLowerCase().includes(search.value.toLowerCase())-->
<!--    );-->
<!--});-->

<!--const searchUsers = () => {-->
<!--    // If you want to implement server-side search, you can add the logic here-->
<!--    // For now, we're using client-side filtering with the computed property-->
<!--};-->

<!--const openCreateUserModal = () => {-->
<!--    isEditing.value = false;-->
<!--    userForm.reset();-->
<!--    isUserModalOpen.value = true;-->
<!--};-->

<!--const editUser = (user) => {-->
<!--    isEditing.value = true;-->
<!--    userForm.id = user.id;-->
<!--    userForm.name = user.name;-->
<!--    userForm.email = user.email;-->
<!--    userForm.password = '';-->
<!--    userForm.password_confirmation = '';-->
<!--    isUserModalOpen.value = true;-->
<!--};-->

<!--const showUser = (user) => {-->
<!--    selectedUser.value = user;-->
<!--    isViewUserModalOpen.value = true;-->
<!--};-->

<!--const closeViewUserModal = () => {-->
<!--    isViewUserModalOpen.value = false;-->
<!--    selectedUser.value = null;-->
<!--};-->

<!--const submitUserForm = () => {-->
<!--    if (isEditing.value) {-->
<!--        // Remove password fields if they're empty-->
<!--        const formData = {...userForm};-->
<!--        if (!formData.password) {-->
<!--            delete formData.password;-->
<!--            delete formData.password_confirmation;-->
<!--        }-->

<!--        userForm.put(route('admin.users.update', userForm.id), {-->
<!--            preserveScroll: true,-->
<!--            onSuccess: () => closeUserModal(),-->
<!--        });-->
<!--    } else {-->
<!--        userForm.post(route('admin.users.store'), {-->
<!--            preserveScroll: true,-->
<!--            onSuccess: () => closeUserModal(),-->
<!--        });-->
<!--    }-->
<!--};-->

<!--const deleteUser = (id) => {-->
<!--    if (confirm('Are you sure you want to delete this user?')) {-->
<!--        useForm().delete(route('admin.users.destroy', id), {-->
<!--            preserveScroll: true,-->
<!--        });-->
<!--    }-->
<!--};-->

<!--const formatDate = (dateString) => {-->
<!--    return new Date(dateString).toLocaleDateString();-->
<!--};-->
<!--</script>-->

<template>
    <Head title="User Management"/>

    <AuthenticatedLayout>
        <template #header>
            <h2 class="font-semibold text-xl leading-tight">User Management</h2>
        </template>

        <div class="py-12">
            <div class="flex min-h-screen w-full flex-col bg-muted/40">
                <div class="flex flex-col sm:gap-4 sm:py-4 sm:pl-14">
                    <header class="sticky top-0 z-30 flex h-14 items-center gap-4 border-b bg-background px-4 sm:static sm:h-auto sm:border-0 sm:bg-transparent sm:px-6">
                        <div class="relative ml-auto flex-1 md:grow-0">
                            <Search class="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
                            <Input
                                type="search"
                                placeholder="Search users..."
                                class="w-full rounded-lg bg-background pl-8 md:w-[200px] lg:w-[320px]"
                                v-model="search"
                                @input="searchUsers"
                            />
                        </div>
                    </header>

                    <main class="grid flex-1 items-start gap-4 p-4 sm:px-6 sm:py-0 md:gap-8">
                        <Card>
                            <CardHeader>
                                <CardTitle>Users</CardTitle>
                                <CardDescription>Manage your users and their access.</CardDescription>
                            </CardHeader>
                            <CardContent>
                                <div class="flex justify-end mb-4">
                                    <Button @click="openCreateUserModal" size="sm" class="h-9 gap-1">
                                        <PlusCircle class="h-4 w-4" />
                                        <span>Add User</span>
                                    </Button>
                                </div>
                                <Table>
                                    <TableHeader>
                                        <TableRow>
                                            <TableHead>Name</TableHead>
                                            <TableHead>Email</TableHead>
                                            <TableHead>Status</TableHead>
                                            <TableHead>Created at</TableHead>
                                            <TableHead>Actions</TableHead>
                                        </TableRow>
                                    </TableHeader>
                                    <TableBody>
                                        <TableRow v-for="user in filteredUsers" :key="user.id">
                                            <TableCell class="font-medium">{{ user.name }}</TableCell>
                                            <TableCell>{{ user.email }}</TableCell>
                                            <TableCell>
                                                <Badge :variant="user.email_verified_at ? 'outline' : 'secondary'">
                                                    {{ user.email_verified_at ? 'Verified' : 'Unverified' }}
                                                </Badge>
                                            </TableCell>
                                            <TableCell>{{ formatDate(user.created_at) }}</TableCell>
                                            <TableCell>
                                                <DropdownMenu>
                                                    <DropdownMenuTrigger as-child>
                                                        <Button size="icon" variant="ghost">
                                                            <MoreHorizontal class="h-4 w-4" />
                                                            <span class="sr-only">Open menu</span>
                                                        </Button>
                                                    </DropdownMenuTrigger>
                                                    <DropdownMenuContent align="end">
                                                        <DropdownMenuItem @click="editUser(user)">Edit</DropdownMenuItem>
                                                        <DropdownMenuItem @click="showUser(user)">View</DropdownMenuItem>
                                                        <DropdownMenuItem @click="toggleVerification(user)" v-if="user.id !== $page.props.auth.user.id">
                                                            {{ user.email_verified_at ? 'Unverify' : 'Verify' }}
                                                        </DropdownMenuItem>
                                                        <DropdownMenuItem @click="deleteUser(user.id)" v-if="user.id !== $page.props.auth.user.id">
                                                            Delete
                                                        </DropdownMenuItem>
                                                    </DropdownMenuContent>
                                                </DropdownMenu>
                                            </TableCell>
                                        </TableRow>
                                    </TableBody>
                                </Table>
                            </CardContent>
                        </Card>
                    </main>
                </div>
            </div>
        </div>

        <!-- Create/Edit User Modal -->
        <Dialog :open="isUserModalOpen" @update:open="closeUserModal">
            <DialogContent>
                <DialogHeader>
                    <DialogTitle>{{ isEditing ? 'Edit User' : 'Create User' }}</DialogTitle>
                </DialogHeader>
                <form @submit.prevent="submitUserForm">
                    <div class="grid gap-4 py-4">
                        <div class="grid grid-cols-4 items-center gap-4">
                            <Label for="name" class="text-right">Name</Label>
                            <div class="col-span-3">
                                <Input id="name" v-model="userForm.name" />
                                <InputError :message="userForm.errors.name" class="mt-2" />
                            </div>
                        </div>
                        <div class="grid grid-cols-4 items-center gap-4">
                            <Label for="email" class="text-right">Email</Label>
                            <div class="col-span-3">
                                <Input id="email" type="email" v-model="userForm.email" />
                                <InputError :message="userForm.errors.email" class="mt-2" />
                            </div>
                        </div>
                        <div class="grid grid-cols-4 items-center gap-4">
                            <Label for="password" class="text-right">
                                {{ isEditing ? 'New Password (optional)' : 'Password' }}
                            </Label>
                            <div class="col-span-3">
                                <Input id="password" type="password" v-model="userForm.password" @input="validatePasswords" />
                                <InputError :message="userForm.errors.password" class="mt-2" />
                            </div>
                        </div>
                        <div class="grid grid-cols-4 items-center gap-4">
                            <Label for="password_confirmation" class="text-right">Confirm Password</Label>
                            <div class="col-span-3">
                                <Input id="password_confirmation" type="password" v-model="userForm.password_confirmation" @input="validatePasswords" />
                                <InputError :message="passwordConfirmationError" class="mt-2" />
                            </div>
                        </div>
                    </div>
                    <DialogFooter>
                        <Button type="submit" :disabled="!isFormValid">Save</Button>
                    </DialogFooter>
                </form>
            </DialogContent>
        </Dialog>

        <!-- View User Modal -->
        <Dialog :open="isViewUserModalOpen" @update:open="closeViewUserModal">
            <DialogContent>
                <DialogHeader>
                    <DialogTitle>User Details</DialogTitle>
                </DialogHeader>
                <div class="grid gap-4 py-4">
                    <div class="grid grid-cols-4 items-center gap-4">
                        <Label class="text-right font-bold">Name:</Label>
                        <span class="col-span-3">{{ selectedUser?.name }}</span>
                    </div>
                    <div class="grid grid-cols-4 items-center gap-4">
                        <Label class="text-right font-bold">Email:</Label>
                        <span class="col-span-3">{{ selectedUser?.email }}</span>
                    </div>
                    <div class="grid grid-cols-4 items-center gap-4">
                        <Label class="text-right font-bold">Status:</Label>
                        <span class="col-span-3">
                            <Badge :variant="selectedUser?.email_verified_at ? 'outline' : 'secondary'">
                                {{ selectedUser?.email_verified_at ? 'Verified' : 'Unverified' }}
                            </Badge>
                        </span>
                    </div>
                    <div class="grid grid-cols-4 items-center gap-4">
                        <Label class="text-right font-bold">Created at:</Label>
                        <span class="col-span-3">{{ formatDate(selectedUser?.created_at) }}</span>
                    </div>
                </div>
                <DialogFooter>
                    <Button @click="closeViewUserModal">Close</Button>
                </DialogFooter>
            </DialogContent>
        </Dialog>
    </AuthenticatedLayout>
</template>

<script setup lang="ts">
import { ref, computed } from 'vue';
import { Head, useForm } from '@inertiajs/vue3';
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import InputError from '@/Components/InputError.vue';
import {
    CircleUser, MoreHorizontal, PlusCircle, Search
} from 'lucide-vue-next';
import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger } from '@/components/ui/dropdown-menu';
import { Input } from '@/components/ui/input';
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table';
import { Dialog, DialogContent, DialogFooter, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { Label } from '@/components/ui/label';

const props = defineProps({
    users: Array
});

const search = ref('');
const isUserModalOpen = ref(false);
const isViewUserModalOpen = ref(false);
const isEditing = ref(false);
const selectedUser = ref(null);
const passwordConfirmationError = ref('');

const userForm = useForm({
    id: null,
    name: '',
    email: '',
    password: '',
    password_confirmation: ''
});

const toggleVerificationForm = useForm({});

const validatePasswords = () => {
    if (userForm.password || userForm.password_confirmation) {
        if (userForm.password !== userForm.password_confirmation) {
            passwordConfirmationError.value = 'The password confirmation does not match.';
        } else {
            passwordConfirmationError.value = '';
        }
    } else {
        passwordConfirmationError.value = '';
    }
};

const isFormValid = computed(() => {
    return userForm.name && userForm.email && !passwordConfirmationError.value &&
        (!isEditing.value || (isEditing.value && (!userForm.password || userForm.password === userForm.password_confirmation)));
});

const closeUserModal = () => {
    isUserModalOpen.value = false;
    userForm.reset();
    passwordConfirmationError.value = '';
};

const filteredUsers = computed(() => {
    if (!search.value) return props.users;
    return props.users.filter(user =>
        user.name.toLowerCase().includes(search.value.toLowerCase()) ||
        user.email.toLowerCase().includes(search.value.toLowerCase())
    );
});

const searchUsers = () => {
    // If you want to implement server-side search, you can add the logic here
    // For now, we're using client-side filtering with the computed property
};

const openCreateUserModal = () => {
    isEditing.value = false;
    userForm.reset();
    isUserModalOpen.value = true;
};

const editUser = (user) => {
    isEditing.value = true;
    userForm.id = user.id;
    userForm.name = user.name;
    userForm.email = user.email;
    userForm.password = '';
    userForm.password_confirmation = '';
    isUserModalOpen.value = true;
};

const showUser = (user) => {
    selectedUser.value = user;
    isViewUserModalOpen.value = true;
};

const closeViewUserModal = () => {
    isViewUserModalOpen.value = false;
    selectedUser.value = null;
};

const submitUserForm = () => {
    if (isEditing.value) {
        // Remove password fields if they're empty
        const formData = {...userForm};
        if (!formData.password) {
            delete formData.password;
            delete formData.password_confirmation;
        }

        userForm.put(route('admin.users.update', userForm.id), {
            preserveScroll: true,
            onSuccess: () => closeUserModal(),
        });
    } else {
        userForm.post(route('admin.users.store'), {
            preserveScroll: true,
            onSuccess: () => closeUserModal(),
        });
    }
};

const deleteUser = (id) => {
    if (confirm('Are you sure you want to delete this user?')) {
        useForm().delete(route('admin.users.destroy', id), {
            preserveScroll: true,
        });
    }
};

const toggleVerification = (user) => {
    console.log('toggleVerification called for user:', user);
    console.log('Route:', route('admin.users.toggle-verification', user.id));

    toggleVerificationForm.put(route('admin.users.toggle-verification', user.id), {}, {
        preserveScroll: true,
        preserveState: false,
        onSuccess: () => {
            console.log('Verification toggled successfully');
            // Update the user's verification status locally
            user.email_verified_at = user.email_verified_at ? null : new Date().toISOString();
        },
        onError: (errors) => {
            console.error('Error toggling verification:', errors);
        }
    });
};

const formatDate = (dateString) => {
    return new Date(dateString).toLocaleDateString();
};
</script>
