import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
axios.defaults.withCredentials=true;
Vue.prototype.axios=axios;
import 'mint-ui/lib/style.css'

import '@/lib/mui/css/mui.css'
import '@/lib/mui/js/mui.js'
Vue.config.productionTip = false
import {Button,Tabbar,TabItem} from 'mint-ui'
/* eslint-disable no-new */
Vue.component(Button.name,Button);
Vue.component(Tabbar.name,Tabbar);
Vue.component(TabItem.name,TabItem);

new Vue({
  el: '#app',
  router,
  render: h => h(App)
})
