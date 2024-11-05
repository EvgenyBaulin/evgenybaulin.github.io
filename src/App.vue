<script>
import Header from "@/components/Header.vue";
import Footer from "@/components/Footer.vue";
import ContactWithMe from "@/components/Contact with me.vue";
import Projects from "@/components/Projects.vue";
import About from "@/components/About.vue";
// import Blog from "@/components/Blog.vue";
// import Work from "@/components/Work.vue";

export default {
  components: {
    Header,
    Footer,
    ContactWithMe,
    Projects,
    About,
  }
}
</script>

<template>
  <div>
    <Header/>
    <About/>
    <Projects/>
    <ContactWithMe/>
    <Footer/>
  </div>
</template>

<style>
body {
  background: linear-gradient(to top, #4e4efd, turquoise);
  height: 100vh;
  margin: 0;
}

#app {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100%;
  margin: 0;
}
</style>