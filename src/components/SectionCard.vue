<template>
  <Header />
  <div class="bg-white/90 backdrop-blur-sm rounded-lg overflow-hidden shadow-md p-6">
    <component :is="section.icon" class="h-12 w-12 mb-4 text-blue-600" />
    <h3 class="text-xl font-semibold mb-2">{{ section.name }}</h3>
    <p class="text-gray-600 mb-4">{{ section.description }}</p>
    <router-link :to="section.path" class="text-blue-600 hover:text-blue-800 font-medium">
      Learn More
    </router-link>
  </div>
</template>

<script setup>
import Header from './Header.vue'
defineProps({
  section: {
    type: Object,
    required: true
  }
})
</script>