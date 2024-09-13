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


<!-- Benutzung der Komponente in der Page (als Slides von mehreren Bildern):

const props = defineProps<{
    imagePaths?: string[]
}>()


<Carousel v-slot="{ canScrollNext }" class="relative w-full mx-auto max-w-5xl">
        <CarouselContent>
            <CarouselItem v-for="(imagePath, index) in imagePaths" :key="index">
                <div class="p-1">
                    <Card>
                        <CardContent class="flex aspect-square items-center justify-center p-6">
                            <ImageDisplay :image-path="imagePath" alt-text="Galeriebild"/>
                        </CardContent>
                    </Card>
                </div>
            </CarouselItem>
        </CarouselContent>
        <CarouselPrevious/>
        <CarouselNext v-if="canScrollNext"/>
</Carousel>

Im Laravel-Controller (bei mehreren Bildern als Array):

public function index()
    {
        $imageFiles = Storage::files('public/images');
        $imagePaths = array_map(function ($file) {
            return str_replace('public/', '', $file);
        }, $imageFiles);

        return Inertia::render('Dashboard', [
            'imagePaths' => $imagePaths
        ]);
    }


als Einzelbild:
<ImageDisplay :image-path="imagePath" alt-text="Galeriebild"/>
-->
