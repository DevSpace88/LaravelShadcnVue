<!--<script setup lang="ts">-->
<!--import { computed } from 'vue';-->
<!--import GuestLayout from '@/Layouts/GuestLayout.vue';-->
<!--import PrimaryButton from '../../components/PrimaryButton.vue';-->
<!--import { Head, Link, useForm } from '@inertiajs/vue3';-->

<!--const props = defineProps<{-->
<!--    status?: string;-->
<!--}>();-->

<!--const form = useForm({});-->

<!--const submit = () => {-->
<!--    form.post(route('verification.send'));-->
<!--};-->

<!--const verificationLinkSent = computed(() => props.status === 'verification-link-sent');-->
<!--</script>-->

<!--<template>-->
<!--    <GuestLayout>-->
<!--        <Head title="Email Verification" />-->

<!--        <div class="mb-4 text-sm text-gray-600 dark:text-gray-400">-->
<!--            Thanks for signing up! Before getting started, could you verify your email address by clicking on the link-->
<!--            we just emailed to you? If you didn't receive the email, we will gladly send you another.-->
<!--        </div>-->

<!--        <div class="mb-4 font-medium text-sm text-green-600 dark:text-green-400" v-if="verificationLinkSent">-->
<!--            A new verification link has been sent to the email address you provided during registration.-->
<!--        </div>-->

<!--        <form @submit.prevent="submit">-->
<!--            <div class="mt-4 flex items-center justify-between">-->
<!--                <PrimaryButton :class="{ 'opacity-25': form.processing }" :disabled="form.processing">-->
<!--                    Resend Verification Email-->
<!--                </PrimaryButton>-->

<!--                <Link-->
<!--                    :href="route('logout')"-->
<!--                    method="post"-->
<!--                    as="button"-->
<!--                    class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800"-->
<!--                    >Log Out</Link-->
<!--                >-->
<!--            </div>-->
<!--        </form>-->
<!--    </GuestLayout>-->
<!--</template>-->

<script setup lang="ts">
import { computed } from 'vue';
import { Head, Link, useForm } from '@inertiajs/vue3';
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'
import ApplicationLogo from "@/components/ApplicationLogo.vue";

const props = defineProps<{
  status?: string;
}>();

const form = useForm({});

const submit = () => {
  form.post(route('verification.send'));
};

const verificationLinkSent = computed(() => props.status === 'verification-link-sent');
</script>

<template>
  <Head title="Email Verification" />

  <Card class="w-full max-w-md mx-auto mt-48">
    <CardHeader>
      <ApplicationLogo class="h-9 w-auto mx-auto my-2"/>
      <CardTitle class="text-2xl">
        Email Verification
      </CardTitle>
      <CardDescription>
        Thanks for signing up! Please verify your email address.
      </CardDescription>
    </CardHeader>
    <CardContent>
      <p class="mb-4 text-sm text-gray-600 dark:text-gray-400">
        We've sent a verification link to your email address. If you didn't receive the email, we can send you another.
      </p>

      <p v-if="verificationLinkSent" class="mb-4 font-medium text-sm text-green-600 dark:text-green-400">
        A new verification link has been sent to your email address.
      </p>

      <form @submit.prevent="submit">
        <Button type="submit" class="w-full" :disabled="form.processing">
          Resend Verification Email
        </Button>
      </form>
    </CardContent>
    <CardFooter class="flex justify-center mt-4 mb-6">
      <Link
          :href="route('logout')"
          method="post"
          as="button"
          class="text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 underline"
      >
        Log Out
      </Link>
    </CardFooter>
  </Card>
</template>