<template>
    <div
        class="relative bg-center bg-no-repeat bg-cover bg-[url('https://images.unsplash.com/photo-1722939218986-a12ce21ac482?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')] dark:bg-gray-200 bg-gray-200 bg-blend-multiply h-[500px] flex items-center justify-center"
    >
        <!-- Overlay for darker effect -->
        <div class="absolute inset-0 bg-black opacity-5"></div>

        <!-- Jumbotron content -->
        <div class="relative z-10 text-center text-white px-4">
            <h1 class="text-4xl font-bold mb-4">
                We invest in the world’s potential
            </h1>
            <p class="text-lg text-gray-300 mb-6">
                Here at Acme Inc. we focus on markets where technology, innovation, and
                capital can unlock long-term value and drive economic growth.
            </p>
            <div class="flex flex-col space-y-4 md:space-x-4 sm:flex-row sm:justify-center sm:space-y-0">
                <Button>
                <a href="#">
                    Get started
                </a>
                </Button>
                <Button variant="secondary">
                <a href="#">
                    Learn more
                </a>
                </Button>
            </div>
        </div>
    </div>
</template>

<script setup>
// No external imports needed for this version
import Button from "@/components/ui/button/Button.vue";
</script>
