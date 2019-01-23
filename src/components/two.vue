<template>
     <div id='app-two' >
        <my-accordion @changeBodyC='changeBodyC'></my-accordion>
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
    data(){return{}},
    methods:{
       changeBodyC(i){
           if(i){
               document.body.className='active'
           }else{
               document.body.className=''
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
body{
    /* overflow-y: hidden; */
}
body.active{
    overflow-y: hidden;
}
    #app-two{
      margin-top: 60px
      
    }
   
</style>
