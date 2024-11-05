<script>
import axios from 'axios';

export default {
  data() {
    return {
      users: [],
      error: null,
      successMessage: null,
      user_name: '',
      user_title: '',
      user_message: '',
      user_email: '',
      user_telegram: '',
      formVisible: true,
    }
  },
  methods: {
    async send_Data() {
      if (this.user_name === '' || this.user_title === '' || this.user_message === '' || this.user_email === '' || this.user_telegram === '') {
        this.error = 'Please fill all fields';
        return;
      }

      this.error = null;
      this.successMessage = null;

      const user = {
        name: this.user_name,
        title: this.user_title,
        message: this.user_message,
        email: this.user_email,
        telegram: this.user_telegram,
      };

      this.users.push(user);

      try {
        const botToken = process.env.VUE_APP_TELEGRAM_BOT_TOKEN;
        const chat_id = process.env.VUE_APP_TELEGRAM_chat_id;
        const response = await axios.post(`https://api.telegram.org/bot${botToken}/sendMessage`, {
          text: `New order from: ${user.name}\nHis Email: ${user.email}\nTitle: ${user.title}\nMessage: ${user.message}\nTelegram: ${user.telegram}`
        });
        console.log('Message sent:', response.data);

        this.user_name = '';
        this.user_title = '';
        this.user_message = '';
        this.user_email = '';
        this.user_telegram = '';

        this.formVisible = false;
        this.successMessage = 'Your message has been sent! You will be contacted shortly!';
      } catch (error) {
        console.error('Error sending message:', error);
      }
    }
  }
}
</script>

<template>
  <div class = "contact">
    <h3>If you are interested in my work and you want to order a project, you can contact me</h3>
    <div v-if = "formVisible">
      <div class = "input-row">
        <input type = "text" v-model = "user_name" placeholder = "Name">
        <input type = "email" v-model = "user_email" placeholder = "Email">
        <input type = "text" v-model = "user_telegram" placeholder = "Telegram">
      </div>
      <div class = "input-row">
        <input class = "title-input" type = "text" v-model = "user_title" placeholder = "Title">
      </div>
      <div class = "input-row">
        <input class = "message-input" type = "text" v-model = "user_message"
               placeholder = "Your message">
      </div>
      <p v-if = "error">{{ error }}</p>
      <button class = "send-button" @click = "send_Data()">Send</button>
    </div>
    <p v-if = "successMessage">{{ successMessage }}</p>
  </div>
</template>

<style scoped>
.contact {
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  background: rgba(64, 64, 208, 0.8);
  border-radius: 45px;
  padding: 30px;
  width: 50%;
}

input {
  width: 100%;
  gap: 10px;
  padding: 10px;
  border: black;
  border-radius: 20px;
  opacity: 70%;
  background: black;
  color: white;
}

.input-row {
  display: flex;
  gap: 10px;
  margin-bottom: 10px;
}

.input-row:last-child {
  margin-bottom: 0;
}

.title-input {
  flex: 1;
}

.message-input {
  width: 100%;
  height: 100px;
}

.send-button {
  width: 100%;
  padding: 10px;
  border: black;
  border-radius: 20px;
  opacity: 70%;
  background: black;
  color: white;
  margin: 0;
}
</style>