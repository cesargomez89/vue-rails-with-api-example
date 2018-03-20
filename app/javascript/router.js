import Vue from 'vue/dist/vue.esm'
import Router from 'vue-router'
import HomePage from './pages/home_page'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomePage
    }
  ]
})
