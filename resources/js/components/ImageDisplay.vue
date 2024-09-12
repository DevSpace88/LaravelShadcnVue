<template>
    <img
        :src="`/storage/${imagePath}`"
        :alt="altText"
        @error="handleImageError"
    >
</template>

<script setup lang="ts">
import { ref } from 'vue'

const props = defineProps<{
    imagePath: string
    altText: string
}>()

const imageError = ref(false)

const handleImageError = () => {
    console.error(`Failed to load image: ${props.imagePath}`)
    imageError.value = true
}
</script>
