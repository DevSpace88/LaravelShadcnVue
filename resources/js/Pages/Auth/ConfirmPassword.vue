<script setup lang="ts">
import { Head, useForm } from '@inertiajs/vue3';
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import InputError from '@/components/InputError.vue';
import ApplicationLogo from "@/components/ApplicationLogo.vue";

const form = useForm({
  password: '',
});

const submit = () => {
  form.post(route('password.confirm'), {
    onFinish: () => {
      form.reset();
    },
  });
};
</script>

<template>
  <Head title="Confirm Password" />

  <Card class="w-full max-w-sm mx-auto mt-48">
    <CardHeader>
      <ApplicationLogo class="h-9 w-auto mx-auto my-2"/>
      <CardTitle class="text-2xl">
        Confirm Password
      </CardTitle>
      <CardDescription>
        This is a secure area of the application. Please confirm your password before continuing.
      </CardDescription>
    </CardHeader>
    <form @submit.prevent="submit">
      <CardContent class="grid gap-4">
        <div class="grid gap-2">
          <Label for="password">Password</Label>
          <Input
              id="password"
              type="password"
              v-model="form.password"
              required
              autocomplete="current-password"
              autofocus
          />
          <InputError :message="form.errors.password" class="mt-2" />
        </div>
      </CardContent>
      <CardFooter class="mt-4 mb-6">
        <Button type="submit" class="w-full" :disabled="form.processing">
          Confirm
        </Button>
      </CardFooter>
    </form>
  </Card>
</template>
