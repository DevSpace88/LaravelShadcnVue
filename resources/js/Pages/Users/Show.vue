<template>
    <div>
        <h1 class="text-2xl font-bold mb-4">User Details</h1>
        <div class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
            <div class="mb-4">
                <strong class="block text-gray-700 text-sm font-bold mb-2">Name:</strong>
                <p>{{ user.name }}</p>
            </div>
            <div class="mb-4">
                <strong class="block text-gray-700 text-sm font-bold mb-2">Email:</strong>
                <p>{{ user.email }}</p>
            </div>
            <div class="mb-4">
                <strong class="block text-gray-700 text-sm font-bold mb-2">Created At:</strong>
                <p>{{ new Date(user.created_at).toLocaleString() }}</p>
            </div>
        </div>
        <Link :href="route('admin.users.edit', user.id)" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mr-2">
            Edit User
        </Link>
        <Link :href="route('admin.users.index')" class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded">
            Back to Users
        </Link>
    </div>
</template>

<script setup>
import { Link } from '@inertiajs/vue3';

defineProps({
    user: Object
});
</script>
