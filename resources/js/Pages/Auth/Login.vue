<script setup lang="ts">
import { ref } from 'vue'
import { useForm, Link } from '@inertiajs/vue3'
import InputError from '@/components/InputError.vue'
import Checkbox from '@/components/ui/checkbox/Checkbox.vue'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import ApplicationLogo from "@/components/ApplicationLogo.vue";

defineProps<{
    canResetPassword?: boolean;
    status?: string;
}>();

const form = useForm({
    email: '',
    password: '',
    remember: false,
});

const submit = () => {
    form.post(route('login'), {
        onFinish: () => {
            form.reset('password');
        },
    });
};
</script>

<template>
    <Card class="w-full max-w-sm mx-auto pb-8 mt-48">
        <CardHeader>
          <ApplicationLogo class="h-9 w-auto mx-auto"/>
            <CardTitle class="text-2xl">
                Login
            </CardTitle>
            <CardDescription>
                Enter your email below to login to your account.
            </CardDescription>
        </CardHeader>
        <form @submit.prevent="submit">
            <CardContent class="grid gap-4">
                <div class="grid gap-2">
                    <Label for="email">Email</Label>
                    <Input
                        id="email"
                        type="email"
                        v-model="form.email"
                        required
                        autofocus
                        autocomplete="username"
                        placeholder="m@example.com"
                    />
                    <InputError class="mt-2" :message="form.errors.email" />
                </div>
                <div class="grid gap-2">
                    <Label for="password">Password</Label>
                    <Input
                        id="password"
                        type="password"
                        v-model="form.password"
                        required
                        autocomplete="current-password"
                        placeholder="******"
                    />
                    <InputError class="mt-2" :message="form.errors.password" />
                </div>
                <div class="block mt-4">
                    <label class="flex items-center">
                        <Checkbox name="remember" v-model:checked="form.remember" />
                        <span class="ml-2 text-sm text-gray-600 dark:text-gray-400">Remember me</span>
                    </label>
                </div>
            </CardContent>
            <CardFooter>
                <Button type="submit" class="w-full" :disabled="form.processing">
                    <span v-if="form.processing" class="loader"></span> <!-- Loader anzeigen wenn in Verarbeitung -->
                    <span v-else>Sign in</span>
                </Button>
            </CardFooter>
        </form>
        <div v-if="canResetPassword" class="text-center text-sm mt-4">
            <Link
                :href="route('password.request')"
                class="underline text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100"
            >
                Forgot your password?
            </Link>
        </div>
    </Card>
</template>
