<script>
export default {
  data() {
    return {
      projects: [
        {
          title: 'PlayStation Games Analysis',
          time_start: 'May 2024',
          time_end: 'May 2024',
          description: 'Conducted data scraping and analysis of games on the PlayStation Store website\n' +
              'Trained a predictive model using Gradient Boosting to forecast game ratings\n' +
              'Optimized model performance with GridSearchCV, achieving high prediction accuracy\n' +
              'Implemented A/B testing to evaluate and refine model predictions',
          link_to_github: 'https://github.com/EvgenyBaulin/PlayStation_Games_Analysis',
          image: '../images/PlayStation Games Analysis.jpg'
        },
        {
          title: 'Android app development',
          time_start: 'Jul 2023',
          time_end: 'Aug 2023',
          description: 'Developed an Android application using Kotlin\n' +
              'Studied Kotlin programming language and Android SDK\n' +
              'Created a simple game as a sample application\n' +
              'Successfully presented and defended the developed application',
          link_to_github: '',
          image: '../images/PlayStation Games Analysis.jpg'
        },
        {
          title: 'Exploring the impact of technology on society',
          time_start: 'Sep 2023',
          time_end: 'May 2024',
          description: '',
          link_to_github: 'Analyzed 210,000 news articles using NLP techniques\n' +
              'Developed predictive models for societal technology impact\n' +
              'Evaluated economic, educational, and healthcare tech transformations\n' +
              'Proposed ethical frameworks for technology implementation',
          image: '../images/PlayStation Games Analysis.jpg'
        },
        {
          title: 'Search for potential Jews among members of VK groups',
          time_start: 'Sep 2024',
          time_end: 'Sep 2024',
          description: 'I collected data on the participants of VK groups dedicated to HSE\n' +
              'After the collection, I analyzed on a variety of parameters whether this person can be a potential member of the Jewish club of HSE or not',
          link_to_github: '',
          image: '../images/PlayStation Games Analysis.jpg'
        }
      ]
    }
  }
}
</script>

<template>
  <div class = "projects">
    <h2>My Projects</h2>
    <div class = "project-list">
      <div class = "project" v-for = "project in projects" :key = "project.title">
        <img :src = "project.image" :alt = "project.title" class = "project-image">
        <h3>{{ project.title }}</h3>
        <p>{{ project.time_start }} - {{ project.time_end }}</p>
        <p>{{ project.description }}</p>
        <a :href = "project.link_to_github" target = "_blank">View Project on GitHub</a>
      </div>
    </div>
  </div>
</template>

<style scoped>
.projects {
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
}

.project-list {
  display: flex;
  flex-wrap: wrap;
  gap: 20px;
  justify-content: center;
}

.project {
  background: #f0f0f0;
  border-radius: 10px;
  padding: 20px;
  width: 300px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.project h3 {
  margin-top: 0;
}

.project a {
  color: #4040d0;
  text-decoration: none;
}

.project-image {
  width: 100%;
  height: auto;
  border-radius: 10px;
  margin-bottom: 10px;
}
</style>