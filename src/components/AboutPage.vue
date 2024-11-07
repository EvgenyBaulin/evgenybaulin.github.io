<template>
  <Header />
  <div class = "min-h-screen bg-gradient-to-b from-teal-300 to-purple-500 py-20">
    <div class = "container mx-auto px-4">
      <div class = "bg-white/90 backdrop-blur-sm rounded-lg shadow-md p-8 max-w-3xl mx-auto">
        <h1 class = "text-4xl font-bold mb-6 text-center">About Me</h1>
        <img src = "../assets/logo.svg?height=300&width=300" alt = "Evgeny Baulin"
             class = "w-48 h-48 rounded-full mx-auto mb-6 object-cover"/>
        <p class = "text-lg mb-6">
          Hello! I'm Evgeny Baulin, a dedicated Programmer Analyst with a passion for data science,
          web development, and continuous learning.
          I'm currently pursuing my BSc in Computer Science with a focus on Data Science and
          Business Analytics at the University of London,
          while also studying Applied Mathematics and Informatics at the Higher School of Economics.
        </p>
        <p class = "text-lg mb-6">
          My journey in the tech world began with a fascination for problem-solving, which naturally
          led me to excel in physics olympiads
          and pursue a career in software development and data analysis. I bring a unique
          perspective to every project, combining my
          analytical skills with creative problem-solving approaches.
        </p>
        <h2 class = "text-2xl font-semibold mb-4">Skills</h2>
        <div class = "mb-6">
          <h3 class = "text-xl font-semibold mb-2">Hard Skills:</h3>
          <div class = "flex flex-wrap gap-2 mb-4">
            <span v-for = "skill in hardSkills" :key = "skill"
                  class = "bg-blue-100 text-blue-800 px-3 py-1 rounded-full text-sm">
              {{ skill }}
            </span>
          </div>
          <h3 class = "text-xl font-semibold mb-2">Soft Skills:</h3>
          <div class = "flex flex-wrap gap-2 mb-4">
            <span v-for = "skill in softSkills" :key = "skill"
                  class = "bg-green-100 text-green-800 px-3 py-1 rounded-full text-sm">
              {{ skill }}
            </span>
          </div>
          <h3 class = "text-xl font-semibold mb-2">Programming:</h3>
          <div class = "flex flex-wrap gap-2 mb-4">
            <span v-for = "skill in programmingSkills" :key = "skill"
                  class = "bg-purple-100 text-purple-800 px-3 py-1 rounded-full text-sm">
              {{ skill }}
            </span>
          </div>
          <h3 class = "text-xl font-semibold mb-2">Database:</h3>
          <div class = "flex flex-wrap gap-2 mb-4">
            <span v-for = "skill in databaseSkills" :key = "skill"
                  class = "bg-yellow-100 text-yellow-800 px-3 py-1 rounded-full text-sm">
              {{ skill }}
            </span>
          </div>
          <h3 class = "text-xl font-semibold mb-2">Data Handling:</h3>
          <div class = "flex flex-wrap gap-2">
            <span v-for = "skill in dataHandlingSkills" :key = "skill"
                  class = "bg-red-100 text-red-800 px-3 py-1 rounded-full text-sm">
              {{ skill }}
            </span>
          </div>
        </div>
        <h2 class = "text-2xl font-semibold mb-4">Interests</h2>
        <p class = "text-lg">
          Outside of my professional pursuits, I'm deeply interested in exploring new technologies
          and their impact on society.
          I enjoy participating in data science competitions on platforms like Kaggle, and I'm
          always eager to take on new
          challenges that push the boundaries of my knowledge and skills.
        </p>
      </div>
    </div>
  </div>
</template>

<script setup>
import Header from './Header.vue'
const hardSkills = ["Data Science", "Data Visualisation", "A/B Testing"]
const softSkills = ["Impactful communication", "Russian (native)", "English (B2-C1)"]
const programmingSkills = ["Python (Advanced)", "LaTeX", "Markdown", "C/C++ (Basics)", "Swift (Basics)", "RISC-V Assembler (Basics)", "Kotlin (Basics)"]
const databaseSkills = ["MySQL", "SQL", "PostgreSQL", "MS SQL", "MapReduce systems"]
const dataHandlingSkills = ["EDA (pd, np, scipy, plt)", "ML (sklearn, nlp)"]
</script>