<template>
    <Head title="User Management"/>

    <AuthenticatedLayout>
        <template #header>
            <h2 class="font-semibold text-xl leading-tight">User Management</h2>
        </template>

        <div class="py-12">
            <div class="flex min-h-screen w-full flex-col">
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
                                        <TableRow v-for="user in users.data" :key="user.id" :class="{ 'opacity-50': user.deleted_at }">
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
                                                        <DropdownMenuItem @click="editUser(user)" v-if="!user.deleted_at">Edit</DropdownMenuItem>
                                                        <DropdownMenuItem @click="showUser(user)">View</DropdownMenuItem>
                                                        <DropdownMenuItem @click="toggleVerification(user)" v-if="user.id !== $page.props.auth.user.id && !user.deleted_at">
                                                            {{ user.email_verified_at ? 'Unverify' : 'Verify' }}
                                                        </DropdownMenuItem>
                                                        <DropdownMenuItem @click="softDeleteUser(user)" v-if="user.id !== $page.props.auth.user.id && !user.deleted_at">
                                                            Soft Delete
                                                        </DropdownMenuItem>
                                                        <DropdownMenuItem @click="restoreUser(user)" v-if="user.deleted_at">
                                                            Restore
                                                        </DropdownMenuItem>
                                                        <DropdownMenuItem @click="forceDeleteUser(user)" v-if="user.id !== $page.props.auth.user.id">
                                                            Permanently Delete
                                                        </DropdownMenuItem>
                                                    </DropdownMenuContent>
                                                </DropdownMenu>
                                            </TableCell>
                                        </TableRow>
                                    </TableBody>

                                    <!-- Pagination-Komponente hinzufügen -->
                                    <div class="mt-4">
                                        <Pagination
                                            v-if="users.total > users.per_page"
                                            :total="users.total"
                                            :sibling-count="1"
                                            show-edges
                                            :default-page="users.current_page"
                                            @change="changePage"
                                        >
                                            <template #default="{ page }">
                                                <PaginationList v-slot="{ items }" class="flex items-center gap-1">
                                                    <PaginationFirst />
                                                    <PaginationPrev />
                                                    <template v-for="(item, index) in items">
                                                        <PaginationListItem v-if="item.type === 'page'" :key="index" :value="item.value" as-child>
                                                            <Button class="w-10 h-10 p-0" :variant="item.value === page ? 'default' : 'outline'">
                                                                {{ item.value }}
                                                            </Button>
                                                        </PaginationListItem>
                                                        <PaginationEllipsis v-else :key="item.type" :index="index" />
                                                    </template>
                                                    <PaginationNext />
                                                    <PaginationLast />
                                                </PaginationList>
                                            </template>
                                        </Pagination>
                                    </div>
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
import { Head, useForm, router } from '@inertiajs/vue3';
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout.vue";
import {
    Pagination,
    PaginationEllipsis,
    PaginationFirst,
    PaginationLast,
    PaginationList,
    PaginationListItem,
    PaginationNext,
    PaginationPrev,
} from '@/components/ui/pagination'
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
import InputError from "@/components/InputError.vue";

const props = defineProps({
    users: Object
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
    console.log('Password:', userForm.password);
    console.log('Password Confirmation:', userForm.password_confirmation);
    console.log('Are equal?:', userForm.password === userForm.password_confirmation);

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


// Modify the isFormValid computed property
const isFormValid = computed(() => {
    const hasRequiredFields = userForm.name && userForm.email;

    if (isEditing.value) {
        // For editing: either both password fields should be empty or they should match
        const hasValidPasswords = (!userForm.password && !userForm.password_confirmation) ||
            (userForm.password && userForm.password === userForm.password_confirmation);
        return hasRequiredFields && hasValidPasswords;
    } else {
        // For new users: require passwords and they must match
        const hasValidPasswords = userForm.password &&
            userForm.password_confirmation &&
            userForm.password === userForm.password_confirmation;
        return hasRequiredFields && hasValidPasswords;
    }
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

const changePage = (page: number) => {
    router.get(route('admin.users.index'), { page: page, search: search.value }, {
        preserveState: true,
        preserveScroll: true,
        replace: true
    });
};

const searchUsers = () => {
    router.get(route('admin.users.index'), { search: search.value, page: 1 }, {
        preserveState: true,
        replace: true
    });
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
    // Validate passwords one last time before submitting
    validatePasswords();

    if (passwordConfirmationError.value) {
        return; // Don't submit if there are password errors
    }

    if (isEditing.value) {
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

const deleteForm = useForm({});
const restoreForm = useForm({});
const forceDeleteForm = useForm({});

const softDeleteUser = (user) => {
    if (confirm(`Are you sure you want to soft delete ${user.name}?`)) {
        deleteForm.delete(route('admin.users.destroy', user.id), {
            preserveScroll: true,
            preserveState: false,
            onSuccess: () => {
                console.log('User soft deleted successfully');
                user.deleted_at = new Date().toISOString();
            },
            onError: (errors) => {
                console.error('Error soft deleting user:', errors);
            }
        });
    }
};

const restoreUser = (user) => {
    if (confirm(`Are you sure you want to restore ${user.name}?`)) {
        restoreForm.put(route('admin.users.restore', user.id), {}, {
            preserveScroll: true,
            preserveState: false,
            onSuccess: () => {
                console.log('User restored successfully');
                user.deleted_at = null;
            },
            onError: (errors) => {
                console.error('Error restoring user:', errors);
            }
        });
    }
};

const forceDeleteUser = (user) => {
    if (confirm(`Are you sure you want to permanently delete ${user.name}? This action cannot be undone.`)) {
        forceDeleteForm.delete(route('admin.users.forceDelete', user.id), {
            preserveScroll: true,
            preserveState: false,
            onSuccess: () => {
                console.log('User permanently deleted');
                // Entfernen des Benutzers aus dem data Array
                props.users.data = props.users.data.filter(u => u.id !== user.id);
                // Aktualisieren der Gesamtzahl der Benutzer
                props.users.total -= 1;

                // Überprüfen, ob die aktuelle Seite jetzt leer ist
                if (props.users.data.length === 0 && props.users.current_page > 1) {
                    // Zur vorherigen Seite navigieren
                    router.get(route('admin.users.index'), {
                        page: props.users.current_page - 1,
                        search: search.value
                    }, {
                        preserveState: true,
                        replace: true
                    });
                }
            },
            onError: (errors) => {
                console.error('Error permanently deleting user:', errors);
            }
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
