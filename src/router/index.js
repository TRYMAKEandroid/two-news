import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import two from '@/components/two'
import we from '@/components/we'
import origin from '@/components/origin'
import log_in from '@/components/login'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      // name: 'HelloWorld',
      // component: HelloWorld
      redirect:'/two'
    },
    {
      path:'/two',
      name:'two',
      component:two
    },
    {
      path:'/we',
      name:'we',
      component:we
    },
    {
      path:'/origin',
      name:'origin',
      component:origin
    },
    {
      path:'/log_in',
      name:'log_in',
      component:log_in
    }
  ]
})
