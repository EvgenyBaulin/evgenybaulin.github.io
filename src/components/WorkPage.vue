<template>
  <Header />
  <div class="min-h-screen bg-gradient-to-b from-teal-300 to-purple-500 py-20">
    <div class="container mx-auto px-4">
      <h1 class="text-4xl font-bold mb-8 text-center">Work Experience</h1>
      <div class="grid gap-8">
        <div v-for="(job, index) in jobs" :key="index" class="bg-white/90 backdrop-blur-sm rounded-lg shadow-md p-6">
          <h2 class="text-2xl font-semibold mb-2">{{ job.title }}</h2>
          <p class="text-gray-600 mb-4">{{ job.company }} | {{ job.period }}</p>
          <ul class="list-disc list-inside space-y-2">
            <li v-for="(responsibility, idx) in job.responsibilities" :key="idx">
              {{ responsibility }}
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import Header from './Header.vue'
const jobs = [
  {
    title: 'Python Teaching Assistant',
    company: 'Remote',
    period: 'Sep 2024 – Present',
    responsibilities: [
      'Assisting the teacher in answering student questions',
      'Provide counselling for students'
    ]
  },
  {
    title: 'Backend Developer',
    company: 'School 1+1 (Школа 1+1)',
    period: 'Jan 2024 – Aug 2024',
    responsibilities: [
      'Lead backend developer for an online school, analogous to Skyeng',
      'Implemented a learning platform using Python and Django Rest Framework (DRF)',
      'Developed features including homework auto-checking, webinar playback, and an integrated chat system',
      'Successfully launched the platform, improving user engagement and learning outcomes'
    ]
  },
  {
    title: 'Lead Developer',
    company: 'Zaryadka Cars Website Development',
    period: 'Dec 2023 – Jan 2024',
    responsibilities: [
      'Led the development of zaryadkacars.ru using the WordPress platform',
      'Delivered a fully functional, bug-free website on time and within budget',
      'Utilized frontend development skills to create a user-friendly interface'
    ]
  },
  {
    title: 'Computer Science Tutor',
    company: 'Remote',
    period: 'Sep 2023 – Jun 2024',
    responsibilities: [
      'Prepared students for the Unified State Exam (ЕГЭ) in computer science',
      'Achieved an average score of 88/100 across 8 students',
      'Enhanced students understanding and performance in key computer science topics'
    ]
  }
]
</script>