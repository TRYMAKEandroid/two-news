<template>
    <div class='newslist-app'>
            <my-accordion-top @putkid='putkid' :yname='yname' :mname='mname' ></my-accordion-top> <!--头部的子组件-->
            <my-accordion-date @putdate='putdate' :kid='kid' ></my-accordion-date><!--调控时间查询组件-->
            <my-newslists :yname='yname' :mname='mname' :kid='kid'></my-newslists><!--新闻列表组件-->
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
            index:0, //初始化为第一个下标的种类 //需要修改
            ischecked:null, //作为判断是否被选中的点击变量
          yname:null,   //年份的名字
          mname:null,   //月份的名字
          kid:1,        //初始化种类的下标 //需要修改
          
        }
    },
    methods:{
        // ischeck(index){         //点击打开列表list
        //     if(this.ischecked==index){
        //     this.ischecked=null;
        //     }else{
        //     this.ischecked=index;}
          
        // },
        putdate(yname,mname){      //从调控时间查询组件过来的参数yname,mname
           this.yname=yname
           this.mname=mname
            
        },
        putkid(kid){                //从头部的组件过来的参数kid
            this.kid=kid
            // console.log(this.kid)
        },
        
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
