<template>
  <Header />
  <div class="min-h-screen bg-gradient-to-b from-teal-300 to-purple-500 py-20">
    <div class="container mx-auto px-4">
      <h1 class="text-4xl font-bold mb-8 text-center">Education</h1>
      <div class="grid gap-8">
        <div v-for="(edu, index) in education" :key="index" class="bg-white/90 backdrop-blur-sm rounded-lg shadow-md p-6">
          <h2 class="text-2xl font-semibold mb-2">{{ edu.institution }}</h2>
          <p class="text-xl mb-2">{{ edu.degree }}</p>
          <p class="text-gray-600 mb-4">{{ edu.period }}</p>
          <p class="text-gray-800">{{ edu.description }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import Header from './Header.vue'
const education = [
  {
    institution: "University of London",
    degree: "BSc Computer Science: Data Science and Business Analytics (DSBA)",
    period: "Oct 2023 – Present",
    description: "Academic direction of London School of Economics"
  },
  {
    institution: "Higher School of Economics, National Research University",
    degree: "BSc Computer Science: Applied Mathematics and Informatics Science (AMIS)",
    period: "Sep 2022 – Present",
    description: "Focusing on applied mathematics and computer science"
  },
  {
    institution: "Web Development Course",
    degree: "Frontend and Backend Development",
    period: "Sep 2022 – Dec 2022",
    description: "Comprehensive course covering both frontend and backend web development technologies"
  }
]
</script>