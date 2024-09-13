<script setup lang="ts">
import {useForm, Link} from '@inertiajs/vue3';
import InputError from '@/components/InputError.vue';
import {Button} from '@/components/ui/button';
import {Card, CardContent, CardDescription, CardHeader, CardTitle} from '@/components/ui/card';
import {Input} from '@/components/ui/input';
import {Label} from '@/components/ui/label';
import ApplicationLogo from "@/components/ApplicationLogo.vue";

const form = useForm({
  name: '',
  email: '',
  password: '',
  password_confirmation: '',
});

const submit = () => {
  form.post(route('register'), {
    onFinish: () => {
      form.reset('password', 'password_confirmation');
    },
  });
};
</script>

<template>
  <Card class="mx-auto max-w-sm pb-8 mt-48">
    <CardHeader>
      <ApplicationLogo class="h-9 w-auto mx-auto"/>
      <CardTitle class="text-xl">Sign Up</CardTitle>
      <CardDescription>Enter your information to create an account</CardDescription>
    </CardHeader>
    <form @submit.prevent="submit">
      <CardContent>
        <div class="grid gap-4">
          <!-- Name Input -->
          <div class="grid gap-2">
            <Label for="name">Name</Label>
            <Input
                id="name"
                v-model="form.name"
                placeholder="Max"
                type="text"
                required
                autofocus
                autocomplete="name"
            />
            <InputError :message="form.errors.name" class="mt-2"/>
          </div>

          <!-- Email Input -->
          <div class="grid gap-2">
            <Label for="email">Email</Label>
            <Input
                id="email"
                v-model="form.email"
                type="email"
                placeholder="m@example.com"
                required
                autocomplete="username"
            />
            <InputError :message="form.errors.email" class="mt-2"/>
          </div>

          <!-- Password Input -->
          <div class="grid gap-2">
            <Label for="password">Password</Label>
            <Input
                id="password"
                v-model="form.password"
                type="password"
                required
                autocomplete="new-password"
            />
            <InputError :message="form.errors.password" class="mt-2"/>
          </div>

          <!-- Password Confirmation -->
          <div class="grid gap-2">
            <Label for="password_confirmation">Confirm Password</Label>
            <Input
                id="password_confirmation"
                v-model="form.password_confirmation"
                type="password"
                required
                autocomplete="new-password"
            />
            <InputError :message="form.errors.password_confirmation" class="mt-2"/>
          </div>

          <!-- Register Button -->
          <Button type="submit" class="w-full" :disabled="form.processing">
            Register
          </Button>
        </div>

        <!-- Already registered? -->
        <div class="mt-4 text-center text-sm">
          Already have an account?
          <Link
              :href="route('login')"
              class="underline text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100"
          >
            Sign in
          </Link>
        </div>
      </CardContent>
    </form>
  </Card>
</template>
