<template>
     <div id='app-two' :class='{"active":index==isindex}'>
        <my-accordion ></my-accordion>
        <my-theme></my-theme>
        <my-dropdown></my-dropdown>
        <my-kind></my-kind>
     </div>
</template>
<script>
import accordion from '@/components/two/accordion.vue' 
import theme from '@/components/two/theme.vue'
import dropdown from '@/components/two/dropdown.vue'
import kind from '@/components/two/kind.vue'
export default {
    data(){return{
        index:1,
        isindex:null
    }},
    methods:{
       changeBodyC(i){
           console.log(i)
          if(this.isindex==null){
              this.isindex=i;
          }else{
              this.isindex=null;
          }
           
       }
    },
    components:{
        'my-accordion':accordion,
        'my-theme':theme,
        'my-dropdown':dropdown,
        'my-kind':kind,
    }
}
</script>
<style >

    #app-two{
      margin-top: 60px
      
    }
    /* #app-two .active{
        overflow: hidden;
    } */
</style>
