<template>
    <div class='newslist-app'>
            <my-accordion-top @putkid='putkid'></my-accordion-top>
            <my-accordion-date @putdate='putdate'></my-accordion-date>
            <my-newslists :yname='yname' :mname='mname' :kid='kid'></my-newslists>
            <!-- <div class='accordion_date'>2019年01月</div> -->
        </div>    
</template>
<script>
import accordion_top from '@/components/newslist/accordion_top.vue'
import accordion_date from '@/components/newslist/accordion_date.vue'
import newslists from '@/components/newslist/newslists.vue'
export default {
    data(){
        return{
            index:0,
            ischecked:null,
          yname:[],
          mname:[],
          kid:null
        }
    },
    methods:{
        ischeck(index){
            if(this.ischecked==index){
            this.ischecked=null;
            }else{
            this.ischecked=index;}
          
        },
        putdate(yname,mname){
           this.yname=yname
           this.mname=mname
            
        },
        putkid(kid){
            this.kid=kid
        }
    },
    components:{
        'my-accordion-top':accordion_top,
        'my-accordion-date':accordion_date,
        'my-newslists':newslists
    },
    
}
</script>
<style scoped>
*{margin:0 ;padding: 0}
.newslist-app{
    position: relative;
    top:0px;
    left: 0px;
    width: 100%;
    height: 40px;
    text-align: center;
}
</style>
