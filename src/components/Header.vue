<template>
  <header class="fixed top-0 left-0 right-0 bg-white/90 backdrop-blur-sm shadow-md z-50">
    <div class="container mx-auto px-4 py-4">
      <nav class="flex items-center justify-between">
        <router-link to="/" class="text-2xl font-bold text-blue-600">Evgeny Baulin</router-link>
        <div class="hidden md:flex space-x-6">
          <router-link v-for="item in navItems" :key="item.name" :to="item.path" class="text-zinc-900 hover:text-blue-600 transition-colors">
            {{ item.name }}
          </router-link>
        </div>
        <div class="flex space-x-4">
          <a href="mailto:e.baulin@icloud.com" class="p-2 rounded-full hover:bg-blue-100 transition-colors">
            <Mail class="h-5 w-5 text-blue-600" />
          </a>
          <a href="https://t.me/evgenybaulin" target="_blank" rel="noopener noreferrer" class="p-2 rounded-full hover:bg-blue-100 transition-colors">
            <MessageSquare class="h-5 w-5 text-blue-600" />
          </a>
        </div>
      </nav>
    </div>
  </header>
</template>

<script setup>
import { Mail, MessageSquare } from 'lucide-vue-next'

const navItems = [
  { name: 'Home', path: '/' },
  { name: 'Work', path: '/work' },
  { name: 'Projects', path: '/projects' },
  { name: 'Education', path: '/education' },
  { name: 'About', path: '/about' },
  { name: 'Contact', path: '/contact' }
]
</script>