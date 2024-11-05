<template>
  <header>
    <div class = "logo">Evgeny</div>
    <ul class = "nav-links">
      <li>
        <router-link to = "/#home">Home</router-link>
      </li>
      <li>
        <router-link to = "/#work">Work</router-link>
      </li>
      <li>
        <router-link to = "/#projects">Projects</router-link>
      </li>
      <li>
        <router-link to = "/#blog">Blog</router-link>
      </li>
      <li>
        <router-link to = "/#about">About</router-link>
      </li>
      <li>
        <router-link to = "/#ContactWithMe">Contact With Me</router-link>
      </li>
    </ul>
    <div class = "social-links">
      <a href = "mailto:e.baulin@icloud.com"><img src = "../icons/Mail.svg" alt = "Email"></a>
      <a href = "https://t.me/maadjiik"><img src = "../icons/Telegram.svg" alt = "Telegram"></a>
    </div>
  </header>
</template>

<script>
export default {
  name: 'Header'
}
</script>

<style scoped>
.social-links img {
  gap: 70px;
  height: 50px;
}

header {
  display: flex;
  padding: 10px 20px;
  align-items: center;
  justify-content: space-between;
}

.nav-links {
  display: flex;
  gap: 15px;
  list-style: none;
}
</style>