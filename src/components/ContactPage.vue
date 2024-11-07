<template>
  <div class = "min-h-screen bg-gradient-to-b from-teal-300 to-purple-500 py-20">
    <Header/>
    <div class = "container mx-auto px-4 pt-16">
      <div class = "bg-white/90 backdrop-blur-sm rounded-lg shadow-md p-8 max-w-2xl mx-auto">
        <h1 class = "text-4xl font-bold mb-6 text-center">Contact Me</h1>
        <p class = "text-lg mb-6 text-center">
          I'm always open to new opportunities and collaborations. Feel free to reach out!
        </p>
        <form @submit.prevent = "sendData" class = "space-y-4">
          <div>
            <label for = "name" class = "block text-sm font-medium text-gray-700 mb-1">Name</label>
            <input v-model = "form.name" id = "name" type = "text" required
                   class = "w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"/>
          </div>
          <div>
            <label for = "email"
                   class = "block text-sm font-medium text-gray-700 mb-1">Email</label>
            <input v-model = "form.email" id = "email" type = "email" required
                   class = "w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"/>
          </div>
          <div>
            <label for = "telegram"
                   class = "block text-sm font-medium text-gray-700 mb-1">Telegram</label>
            <input v-model = "form.telegram" id = "telegram" type = "text" required
                   class = "w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"/>
          </div>
          <div>
            <label for = "title"
                   class = "block text-sm font-medium text-gray-700 mb-1">Title</label>
            <input v-model = "form.title" id = "title" type = "text" required
                   class = "w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"/>
          </div>
          <div>
            <label for = "message"
                   class = "block text-sm font-medium text-gray-700 mb-1">Message</label>
            <textarea v-model = "form.message" id = "message" rows = "5" required
                      class = "w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"></textarea>
          </div>
          <button type = "submit"
                  class = "w-full bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 transition-colors focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2">
            Send Message
          </button>
        </form>
        <p v-if = "error" class = "mt-4 text-red-600 text-center">{{ error }}</p>
        <p v-if = "success" class = "mt-4 text-green-600 text-center">{{ success }}</p>
        <div class = "mt-8">
          <h2 class = "text-2xl font-semibold mb-4">Other Ways to Connect</h2>
          <div class = "flex space-x-4">
            <a v-for = "icon in socialIcons" :key = "icon.name" :href = "icon.link"
               target = "_blank" rel = "noopener noreferrer"
               class = "text-gray-600 hover:text-blue-600 transition-colors">
              <component :is = "icon.component" class = "h-6 w-6"/>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import {ref} from 'vue'
import axios from 'axios'
import {Mail, Linkedin, Github, Instagram} from 'lucide-vue-next'
import Header from './Header.vue'

const form = ref({
  name: '',
  email: '',
  telegram: '',
  title: '',
  message: ''
})

const error = ref(null)
const success = ref(null)

const sendData = async () => {
  if (Object.values(form.value).some(field => field === '')) {
    error.value = 'Please fill all fields'
    success.value = null
    return
  }

  error.value = null
  success.value = null

  try {
    const response = await axios.post('https://api.telegram.org/bot7647169031:AAGbHFVYakoQaSivO3KePxiENaD9EGz-bu8/sendMessage', {
      chat_id: '582677765',
      text: `New order from: ${form.value.name}\nEmail: ${form.value.email}\nTitle: ${form.value.title}\nMessage: ${form.value.message}\nTelegram: ${form.value.telegram}`
    })
    console.log('Message sent:', response.data)
    success.value = 'Your message has been sent successfully!'
    form.value = {name: '', email: '', telegram: '', title: '', message: ''}
  } catch (error) {
    console.error('Error sending message:', error)
    error.value = 'An error occurred while sending your message. Please try again later.'
  }
}

const socialIcons = [
  {name: 'Email', component: Mail, link: 'mailto:e.baulin@icloud.com'},
  {name: 'LinkedIn', component: Linkedin, link: 'https://www.linkedin.com/in/evgenybaulin'},
  {name: 'GitHub', component: Github, link: 'https://github.com/evgenybaulin'},
  {name: 'Instagram', component: Instagram, link: 'https://www.instagram.com/evgenybaulin'}
]
</script>