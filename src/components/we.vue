<template>
    <div class='we-app'>
        <my-top-search></my-top-search>
        <my-nav-tab></my-nav-tab>
        <my-special></my-special>
        <my-hot-author></my-hot-author>
<!--       
    <div v-for='(item,i) in list' :key='i'>{{item.pics}} <span></span>
        <div v-for='(p,i) in item.pics' :key='i'>{{p[i]}}

                
    </div>
    </div>  -->
        </div>
        
   
</template>
<script>
import top_search from '@/components/we/top_search.vue'
import nav_tab from '@/components/we/nav_tab.vue'
import special from '@/components/we/special.vue'
import hot_author from '@/components/we/hot_author.vue'
export default {
    data(){
        return{
            // list:'[{"pic":{"pics":[{"0":"httpdsdsd"},{"1":"ppppppppp"}]}}, {"title":{"titles":{"0":"asasa","1":"asasasasasasas"}}}]'
            // list:'[{"pics":[{"0":"asd"},{"1":"1234567"}]},{"titles":[{"0":"123456"},{"1":"qwertyui"}]}]'
            }
    },
    methods:{
        
    },
    components:{
        'my-nav-tab':nav_tab,
        'my-top-search':top_search,
        'my-special':special,
        'my-hot-author':hot_author
    },
    created(){
        // this.list=JSON.parse(this.list);
        // console.log(this.list)
       
    //   for(var title in this.list){
           
    //        for(var i in this.list[title]){
    //            console.log(this.list[title][i][i])
    //        }
    //    }console.log(this.list)
      
       
    }
}
</script>
<style scoped>
body{
background: whitesmoke;
}
 .we-app{
     
 }
</style>
