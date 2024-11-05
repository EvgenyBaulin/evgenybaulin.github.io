<script>
import axios from 'axios';

export default {
  data() {
    return {
      users: [],
      error: null,
      user_name: '',
      user_title: '',
      user_message: '',
      user_email: '',
      user_telegram: '',
    }
  },
  methods: {
    async send_Data() {
      if (this.user_name === '' || this.user_title === '' || this.user_message === '' || this.user_email === '' || this.user_telegram === '') {
        this.error = 'Please fill all fields';
        return;
      }

      this.error = null;

      const user = {
        name: this.user_name,
        title: this.user_title,
        message: this.user_message,
        email: this.user_email,
        telegram: this.user_telegram,
      };

      this.users.push(user);

      try {
        const response = await axios.post(`https://api.telegram.org/bot7647169031:AAGbHFVYakoQaSivO3KePxiENaD9EGz-bu8/sendMessage`, {
          chat_id: '582677765',
          text: `New order from: ${user.name}\nHis Email: ${user.email}\nTitle: ${user.title}\nMessage: ${user.message}\nTelegram: ${user.telegram}`
        });
        console.log('Message sent:', response.data);
      } catch (error) {
        console.error('Error sending message:', error);
      }
    }
  }
}
</script>

<template>
  <div>
    <input type = "text" v-model = "user_name" placeholder = "Name">
    <input type = "text" v-model = "user_title" placeholder = "Title">
    <input type = "text" v-model = "user_message" placeholder = "Your message">
    <input type = "email" v-model = "user_email" placeholder = "Email">
    <input type = "text" v-model = "user_telegram" placeholder = "Telegram">

    <p>{{ error }}</p>

    <button @click = "send_Data()">Send</button>
  </div>
</template>