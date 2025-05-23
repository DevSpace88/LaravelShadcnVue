<script setup lang="ts">
import { ref } from 'vue'
import { useForm } from '@inertiajs/vue3'
import LucideSpinner from '~icons/lucide/loader-2'
import GitHubLogo from '~icons/radix-icons/github-logo'

import { cn } from '@/lib/utils'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import InputError from '@/components/InputError.vue'

const form = useForm({
  name: '',
  email: '',
  password: '',
  password_confirmation: '',
});

const isLoading = ref(false)

const submit = () => {
  isLoading.value = true
  form.post(route('register'), {
    onFinish: () => {
      form.reset('password', 'password_confirmation');
      isLoading.value = false
    },
  });
};
</script>

<template>
  <div :class="cn('grid gap-6', $attrs.class ?? '')">
    <form @submit.prevent="submit">
      <div class="grid gap-2">
        <div class="grid gap-1">
          <Label class="sr-only" for="name">
            Name
          </Label>
          <Input
              id="name"
              v-model="form.name"
              placeholder="Your Name"
              type="text"
              auto-capitalize="words"
              auto-complete="name"
              :disabled="isLoading"
              required
          />
          <InputError :message="form.errors.name" class="mt-1" />
        </div>
        <div class="grid gap-1">
          <Label class="sr-only" for="email">
            Email
          </Label>
          <Input
              id="email"
              v-model="form.email"
              placeholder="name@example.com"
              type="email"
              auto-capitalize="none"
              auto-complete="email"
              auto-correct="off"
              :disabled="isLoading"
              required
          />
          <InputError :message="form.errors.email" class="mt-1" />
        </div>
        <div class="grid gap-1">
          <Label class="sr-only" for="password">
            Password
          </Label>
          <Input
              id="password"
              v-model="form.password"
              placeholder="Password"
              type="password"
              auto-complete="new-password"
              :disabled="isLoading"
              required
          />
          <InputError :message="form.errors.password" class="mt-1" />
        </div>
        <div class="grid gap-1">
          <Label class="sr-only" for="password_confirmation">
            Confirm Password
          </Label>
          <Input
              id="password_confirmation"
              v-model="form.password_confirmation"
              placeholder="Confirm Password"
              type="password"
              auto-complete="new-password"
              :disabled="isLoading"
              required
          />
          <InputError :message="form.errors.password_confirmation" class="mt-1" />
        </div>
        <Button :disabled="isLoading">
          <LucideSpinner v-if="isLoading" class="mr-2 h-4 w-4 animate-spin" />
          Sign Up
        </Button>
      </div>
    </form>
    <div class="relative">
      <div class="absolute inset-0 flex items-center">
        <span class="w-full border-t" />
      </div>
      <div class="relative flex justify-center text-xs uppercase">
                <span class="bg-background px-2 text-muted-foreground">
                    Or continue with
                </span>
      </div>
    </div>
    <Button variant="outline" type="button" :disabled="isLoading">
      <LucideSpinner v-if="isLoading" class="mr-2 h-4 w-4 animate-spin" />
      <GitHubLogo v-else class="mr-2 h-4 w-4" />
      GitHub
    </Button>
  </div>
</template>
