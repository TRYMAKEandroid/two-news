<template>
  <div id="app">
    <router-view />
    <mt-tabbar v-model='selected' fixed>
        <mt-tab-item id='/two'>
          <img src="@/assets/tabbar-icon/T1.png" alt="" slot="icon" v-show='T1_icon'>
          <img src="@/assets/tabbar-icon/T2.png" alt="" slot="icon" v-show='T2_icon'>
        </mt-tab-item>
        <mt-tab-item id='/we'>
          <img src="@/assets/tabbar-icon/W1.png" alt="" slot="icon" v-show='W1_icon'>
          <img src="@/assets/tabbar-icon/W2.png" alt="" slot="icon" v-show='W2_icon'>
        </mt-tab-item>
        <mt-tab-item id='/origin'>
          <img src="@/assets/tabbar-icon/O1.png" alt="" slot="icon" v-show='O1_icon'>
          <img src="@/assets/tabbar-icon/O2.png" alt="" slot="icon" v-show='O2_icon'>
        </mt-tab-item>
      </mt-tabbar>
     
  </div>
</template>

<script>
export default {
  name: 'App',
  data(){
    return{
      selected:'/two',
      T1_icon:false,
      T2_icon:true,
      W1_icon:true,
      W2_icon:false,
      O1_icon:true,
      O2_icon:false,
     
      
    }
  },
  methods:{
    getbody(){
     return document.body;
    }
  },
  watch:{
    selected(val,olval){
      
      switch(val){
        case '/two':
          this.T1_icon=false;
          this. T2_icon=true;
          this. W1_icon=true;
          this. W2_icon=false;
          this. O1_icon=true;
          this. O2_icon=false;
          break;
        case '/we':
          this. T1_icon=true;
          this. T2_icon=false;
          this. W1_icon=false;
          this. W2_icon=true;
          this. O1_icon=true;
          this. O2_icon=false;
          break;
        default :
          this. T1_icon=true;
          this. T2_icon=false;
          this. W1_icon=true;
          this. W2_icon=false;
          this. O1_icon=false;
          this. O2_icon=true;
      }
      this.$router.push(val)
    }
  },
  created(){
    console.log(this.getbody())
  }
}
</script>

<style>
body.active{
  overflow: hidden;
}
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  
}
#app .mint-tabbar{
  /* position: ;
  height:  */
}
</style>
