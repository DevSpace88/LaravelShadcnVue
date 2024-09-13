<!--<script setup lang="ts">-->
<!--import GuestLayout from '@/Layouts/GuestLayout.vue';-->
<!--import InputError from '../../components/InputError.vue';-->
<!--import InputLabel from '../../components/InputLabel.vue';-->
<!--import PrimaryButton from '../../components/PrimaryButton.vue';-->
<!--import TextInput from '../../components/TextInput.vue';-->
<!--import { Head, useForm } from '@inertiajs/vue3';-->

<!--const form = useForm({-->
<!--    password: '',-->
<!--});-->

<!--const submit = () => {-->
<!--    form.post(route('password.confirm'), {-->
<!--        onFinish: () => {-->
<!--            form.reset();-->
<!--        },-->
<!--    });-->
<!--};-->
<!--</script>-->

<!--<template>-->
<!--    <GuestLayout>-->
<!--        <Head title="Confirm Password" />-->

<!--        <div class="mb-4 text-sm text-gray-600 dark:text-gray-400">-->
<!--            This is a secure area of the application. Please confirm your password before continuing.-->
<!--        </div>-->

<!--        <form @submit.prevent="submit">-->
<!--            <div>-->
<!--                <InputLabel for="password" value="Password" />-->
<!--                <TextInput-->
<!--                    id="password"-->
<!--                    type="password"-->
<!--                    class="mt-1 block w-full"-->
<!--                    v-model="form.password"-->
<!--                    required-->
<!--                    autocomplete="current-password"-->
<!--                    autofocus-->
<!--                />-->
<!--                <InputError class="mt-2" :message="form.errors.password" />-->
<!--            </div>-->

<!--            <div class="flex justify-end mt-4">-->
<!--                <PrimaryButton class="ms-4" :class="{ 'opacity-25': form.processing }" :disabled="form.processing">-->
<!--                    Confirm-->
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