<template>
  <div class = "min-h-screen bg-gradient-to-b from-teal-300 to-purple-500">
    <Header/>

    <!-- Hero Section -->
    <section class = "container mx-auto px-4 py-20 text-center">
      <h1 class = "text-4xl font-bold mb-4">Evgeny Baulin</h1>
      <h2 class = "text-2xl mb-6">Programmer Analyst</h2>
      <p class = "text-lg md:text-xl text-zinc-800 max-w-3xl mx-auto mb-8">
        Dedicated to continuous learning and professional growth. Winner of multiple physics
        olympiads.
        I am a person who loves fashion and creative projects, always in search of fresh ideas and
        interesting solutions.
      </p>
      <div class = "flex justify-center space-x-4">
        <a href = "https://t.me/evgenybaulin" target = "_blank" rel = "noopener noreferrer"
           class = "bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700 transition-colors">Telegram</a>
        <a href = "https://www.kaggle.com/evgenybaulin" target = "_blank"
           rel = "noopener noreferrer"
           class = "bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700 transition-colors">Kaggle</a>
        <a href = "https://www.linkedin.com/in/evgenybaulin" target = "_blank"
           rel = "noopener noreferrer"
           class = "bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700 transition-colors">LinkedIn</a>
      </div>
    </section>

    <!-- Sections Overview -->
    <section class = "container mx-auto px-4 py-16">
      <div class = "grid md:grid-cols-2 lg:grid-cols-3 gap-8">
        <SectionCard v-for = "section in sections" :key = "section.name" :section = "section"/>
      </div>
    </section>
  </div>
</template>

<script setup>
import {ref} from 'vue'
import Header from './Header.vue'
import {
  Mail,
  MessageSquare,
  Linkedin,
  Github,
  Briefcase,
  FolderOpen,
  PenTool,
  User,
  PhoneCall
} from 'lucide-vue-next'
import SectionCard from './SectionCard.vue'

const navItems = [
  {name: 'Home', path: '/'},
  {name: 'Work', path: '/work'},
  {name: 'Projects', path: '/projects'},
  {name: 'Education', path: '/education'},
  {name: 'About', path: '/about'},
  {name: 'Contact', path: '/contact'}
]

const sections = [
  {
    name: 'Work Experience',
    description: 'Explore my professional journey as a Python Teaching Assistant, Backend Developer, and more.',
    icon: Briefcase,
    path: '/work'
  },
  {
    name: 'Projects',
    description: "Discover the innovative projects I've worked on, including PlayStation Games Analysis and Android app development.",
    icon: FolderOpen,
    path: '/projects'
  },
  {
    name: 'Education',
    description: 'Learn about my academic background in Computer Science from the University of London and Higher School of Economics.',
    icon: PenTool,
    path: '/education'
  },
  {
    name: 'About Me',
    description: 'Learn more about my background, skills, and interests in data science and web development.',
    icon: User,
    path: '/about'
  },
  {
    name: 'Contact',
    description: "Get in touch with me for collaborations or inquiries. Let's work together!",
    icon: PhoneCall,
    path: '/contact'
  }
]

const socialIcons = [
  {name: 'Mail', component: Mail, link: 'mailto:e.baulin@icloud.com'},
  {name: 'Telegram', component: MessageSquare, link: 'https://t.me/evgenybaulin'},
  {name: 'LinkedIn', component: Linkedin, link: 'https://www.linkedin.com/in/evgenybaulin'},
  {name: 'Github', component: Github, link: 'https://github.com/evgenybaulin'}
]
</script>