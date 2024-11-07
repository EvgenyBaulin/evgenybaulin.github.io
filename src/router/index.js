import { createRouter, createWebHistory } from 'vue-router'
import PortfolioPage from '../components/PortfolioPage.vue'
import WorkPage from '../components/WorkPage.vue'
import ProjectsPage from '../components/ProjectsPage.vue'
import EducationPage from '../components/EducationPage.vue'
import AboutPage from '../components/AboutPage.vue'
import ContactPage from '../components/ContactPage.vue'

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        { path: '/', component: PortfolioPage },
        { path: '/work', component: WorkPage },
        { path: '/projects', component: ProjectsPage },
        { path: '/education', component: EducationPage },
        { path: '/about', component: AboutPage },
        { path: '/contact', component: ContactPage }
    ]
})

export default router