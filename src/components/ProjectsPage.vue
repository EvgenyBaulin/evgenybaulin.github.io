<template>
  <Header />
  <div class="min-h-screen bg-gradient-to-b from-teal-300 to-purple-500 py-20">
    <div class="container mx-auto px-4">
      <h1 class="text-4xl font-bold mb-8 text-center">My Projects</h1>
      <div class="grid md:grid-cols-2 gap-8">
        <div v-for="(project, index) in projects" :key="index" class="bg-white/90 backdrop-blur-sm rounded-lg shadow-md overflow-hidden">
          <div class="p-6">
            <h2 class="text-2xl font-semibold mb-2">{{ project.title }}</h2>
            <p class="text-gray-600 mb-2">{{ project.role }} | {{ project.period }}</p>
            <p class="text-gray-800 mb-4">{{ project.description }}</p>
            <ul class="list-disc list-inside space-y-2 mb-4">
              <li v-for="(detail, idx) in project.details" :key="idx">
                {{ detail }}
              </li>
            </ul>
            <div class="flex flex-wrap gap-2">
              <span v-for="(tech, idx) in project.technologies" :key="idx" class="bg-blue-100 text-blue-800 px-2 py-1 rounded text-sm">
                {{ tech }}
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import Header from './Header.vue'

const projects = [
  {
    title: "PlayStation Games Analysis",
    role: "Lead Analyst",
    period: "May 2024",
    description: "Conducted data scraping and analysis of games on the PlayStation Store website",
    details: [
      "Trained a predictive model using Gradient Boosting to forecast game ratings",
      "Optimized model performance with GridSearchCV, achieving high prediction accuracy",
      "Implemented A/B testing to evaluate and refine model predictions"
    ],
    technologies: ["Python", "Data Scraping", "Gradient Boosting", "GridSearchCV", "A/B Testing"]
  },
  {
    title: "Android App Development",
    role: "Summer Intern",
    period: "Jul 2023 – Aug 2023",
    description: "Developed an Android application using Kotlin during a university summer internship",
    details: [
      "Studied Kotlin programming language and Android SDK",
      "Created a simple game as a sample application",
      "Successfully presented and defended the developed application"
    ],
    technologies: ["Kotlin", "Android SDK", "Mobile App Development"]
  },
  {
    title: "Exploring the Impact of Technology on Society",
    role: "Researcher",
    period: "Sep 2023 – May 2024",
    description: "Analyzed the societal impact of technology through extensive data analysis",
    details: [
      "Analyzed 210,000 news articles using NLP techniques",
      "Developed predictive models for societal technology impact",
      "Evaluated economic, educational, and healthcare tech transformations",
      "Proposed ethical frameworks for technology implementation"
    ],
    technologies: ["NLP", "Predictive Modeling", "Data Analysis", "Python"]
  },
  {
    title: "Search for Potential Jews Among VK Group Members",
    role: "Lead Analyst",
    period: "Sep 2024",
    description: "Conducted data analysis on VK group participants to identify potential Jewish club members",
    details: [
      "Collected data on participants of VK groups dedicated to HSE",
      "Analyzed various parameters to determine potential membership in the Jewish club of HSE"
    ],
    technologies: ["Data Collection", "Data Analysis", "Python"]
  }
]
</script>