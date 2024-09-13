<script setup lang="ts">
import { Head, useForm } from '@inertiajs/vue3';
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import InputError from '@/components/InputError.vue';
import ApplicationLogo from "@/components/ApplicationLogo.vue";

defineProps<{
  status?: string;
}>();

const form = useForm({
  email: '',
});

const submit = () => {
  form.post(route('password.email'));
};
</script>

<template>
  <Head title="Forgot Password" />

  <Card class="w-full max-w-sm mx-auto mt-48">
    <CardHeader>
      <ApplicationLogo class="h-9 w-auto mx-auto my-2"/>
      <CardTitle class="text-2xl">
        Forgot Password
      </CardTitle>
      <CardDescription>
        Enter your email to receive a password reset link.
      </CardDescription>
    </CardHeader>
    <form @submit.prevent="submit">
      <CardContent class="grid gap-4">
        <div v-if="status" class="mb-4 font-medium text-sm text-green-600 dark:text-green-400">
          {{ status }}
        </div>
        <div class="grid gap-2">
          <Label for="email">Email:</Label>
          <Input
              id="email"
              type="email"
              v-model="form.email"
              placeholder="m@example.com"
              required
              autofocus
              autocomplete="username"
          />
          <InputError :message="form.errors.email" class="mt-2" />
        </div>
      </CardContent>
      <CardFooter class="mt-4 mb-6">
        <Button type="submit" class="w-full" :disabled="form.processing">
          Email Password Reset Link
        </Button>
      </CardFooter>
    </form>
  </Card>
</template>
