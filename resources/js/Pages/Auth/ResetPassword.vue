<!--<script setup lang="ts">-->
<!--import GuestLayout from '@/Layouts/GuestLayout.vue';-->
<!--import InputError from '../../components/InputError.vue';-->
<!--import InputLabel from '../../components/InputLabel.vue';-->
<!--import PrimaryButton from '../../components/PrimaryButton.vue';-->
<!--import TextInput from '../../components/TextInput.vue';-->
<!--import { Head, useForm } from '@inertiajs/vue3';-->

<!--const props = defineProps<{-->
<!--    email: string;-->
<!--    token: string;-->
<!--}>();-->

<!--const form = useForm({-->
<!--    token: props.token,-->
<!--    email: props.email,-->
<!--    password: '',-->
<!--    password_confirmation: '',-->
<!--});-->

<!--const submit = () => {-->
<!--    form.post(route('password.store'), {-->
<!--        onFinish: () => {-->
<!--            form.reset('password', 'password_confirmation');-->
<!--        },-->
<!--    });-->
<!--};-->
<!--</script>-->

<!--<template>-->
<!--    <GuestLayout>-->
<!--        <Head title="Reset Password" />-->

<!--        <form @submit.prevent="submit">-->
<!--            <div>-->
<!--                <InputLabel for="email" value="Email" />-->

<!--                <TextInput-->
<!--                    id="email"-->
<!--                    type="email"-->
<!--                    class="mt-1 block w-full"-->
<!--                    v-model="form.email"-->
<!--                    required-->
<!--                    autofocus-->
<!--                    autocomplete="username"-->
<!--                />-->

<!--                <InputError class="mt-2" :message="form.errors.email" />-->
<!--            </div>-->

<!--            <div class="mt-4">-->
<!--                <InputLabel for="password" value="Password" />-->

<!--                <TextInput-->
<!--                    id="password"-->
<!--                    type="password"-->
<!--                    class="mt-1 block w-full"-->
<!--                    v-model="form.password"-->
<!--                    required-->
<!--                    autocomplete="new-password"-->
<!--                />-->

<!--                <InputError class="mt-2" :message="form.errors.password" />-->
<!--            </div>-->

<!--            <div class="mt-4">-->
<!--                <InputLabel for="password_confirmation" value="Confirm Password" />-->

<!--                <TextInput-->
<!--                    id="password_confirmation"-->
<!--                    type="password"-->
<!--                    class="mt-1 block w-full"-->
<!--                    v-model="form.password_confirmation"-->
<!--                    required-->
<!--                    autocomplete="new-password"-->
<!--                />-->

<!--                <InputError class="mt-2" :message="form.errors.password_confirmation" />-->
<!--            </div>-->

<!--            <div class="flex items-center justify-end mt-4">-->
<!--                <PrimaryButton :class="{ 'opacity-25': form.processing }" :disabled="form.processing">-->
<!--                    Reset Password-->
<!--                </PrimaryButton>-->
<!--            </div>-->
<!--        </form>-->
<!--    </GuestLayout>-->
<!--</template>-->

<script setup lang="ts">
import { Head, useForm } from '@inertiajs/vue3';
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import InputError from '@/components/InputError.vue';
import ApplicationLogo from "@/components/ApplicationLogo.vue";

const props = defineProps<{
  email: string;
  token: string;
}>();

const form = useForm({
  token: props.token,
  email: props.email,
  password: '',
  password_confirmation: '',
});

const submit = () => {
  form.post(route('password.store'), {
    onFinish: () => {
      form.reset('password', 'password_confirmation');
    },
  });
};
</script>

<template>
  <Head title="Reset Password" />

  <Card class="w-full max-w-sm mx-auto mt-48">
    <CardHeader>
      <ApplicationLogo class="h-9 w-auto mx-auto my-2"/>
      <CardTitle class="text-2xl">
        Reset Password
      </CardTitle>
      <CardDescription>
        Please enter your new password.
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
          />
          <InputError :message="form.errors.email" class="mt-2" />
        </div>

        <div class="grid gap-2">
          <Label for="password">New Password</Label>
          <Input
              id="password"
              type="password"
              v-model="form.password"
              required
              autocomplete="new-password"
          />
          <InputError :message="form.errors.password" class="mt-2" />
        </div>

        <div class="grid gap-2">
          <Label for="password_confirmation">Confirm New Password</Label>
          <Input
              id="password_confirmation"
              type="password"
              v-model="form.password_confirmation"
              required
              autocomplete="new-password"
          />
          <InputError :message="form.errors.password_confirmation" class="mt-2" />
        </div>
      </CardContent>
      <CardFooter class="mt-4 mb-6">
        <Button type="submit" class="w-full" :disabled="form.processing">
          Reset Password
        </Button>
      </CardFooter>
    </form>
  </Card>
</template>