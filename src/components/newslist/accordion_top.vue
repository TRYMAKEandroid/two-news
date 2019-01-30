<template>
    <div class='accordion-app'>
            <div class='accordion_top '>
                <div class='accordion_brand' @click='ischeck(index)' :class='{"active":index==ischecked}'><span>{{brand}}</span></div>
                <div class='accordion_content' :class='{"active":index==ischecked}'>
                    <ul >
                        <li v-for='(item,i) of list' :key='i' @click="keepk(item.kid,item.kname)">{{item.kname}}</li>
                    </ul>
                </div>
            </div>
            <!-- <div class='accordion_date'>2019年01月</div> -->
        </div>    
</template>
<script>
export default {
    data(){
        return{
            index:0,    //判断accordion是否展开
            ischecked:null, //如果ischecked==index accordion展开
            list:[],    //用来存放从后台查询kind表时返回的数据
            brand:'ONESTARY',   //初始化brand个为‘ONESTARY’ //需要修改
            kid:1,          //初始化种类kid为1  //需要修改
            selectMM:true   
        }
    },
    methods:{
        ischeck(index){     //accordion是否展开的函数
            if(this.ischecked==index){ 
            this.ischecked=null;
            }else{
            this.ischecked=index;}
          
        },
        keepk(kid,kname){   //接收来自kind表数据遍历后item的kid和name，把brand变成种类名kname，关闭accordion
            this.kid=kid;
            this.brand=kname;
            this.ischecked=null;
            this.$emit('putkid',this.kid); //用event up发送种类名给父组件 
            this.$emit('putselect',this.selectMM); 
        }
    },
    created(){
        this.axios.get('http://127.0.0.1:3000/getkinds').then((res)=>{  //创建实例后直接请求后台获取
            var res=res.data;
            this.list=res;
        })
    },
    // props:['yname','mname'], //从父组件获取年名字和月名字
    watch:{
        // kid(){ //当种类kid发生改变是把当前实例的年名字去查询news表，从而获取月份
        //     console.log(this.yname)
        //      var start=new Date(`${this.yname}-1-1`); //年的第一天
        //             var end=new Date(`${this.yname}-12-31`); //年的最后一天
        //             this.axios.get('http://127.0.0.1:3000/getMonth?start='+start+'&end='+end+'&kid='+this.kid).then((res)=>{
        //                 var res=res.data;
        //                  for(var i in res){
        //                 var month1=0;
        //                 if(i>0){
        //                     var month1=new Date(res[i-1].ntime).getMonth()+1;
        //                 }
        //                     var month2=new Date(res[i].ntime).getMonth()+1;
        //                 if(month1!=month2){
        //                     this.listm.push(month2);
                            
        //                 }
        //                 this.mname=this.listm[0];  //默认为第一个月
                    
        //             }
        //                     });
        // }
    }
}
</script>
<style scoped>
*{margin:0 ;padding: 0}
.accordion-app{
    position: relative;
    top:0px;
    left: 0px;
    width: 100%;
    height: 40px;
    text-align: center;
}
.accordion_top{
    position:absolute;
    top: 0px;
    left: 0px;
    width:100% ;
    
    display: flex;
    flex-flow: column nowrap;
    justify-content: center;
    align-items: center;
}
.accordion_top .accordion_brand{
    width: 100%;
    height:40px;
    border: 1px solid black;
    display: flex;
    flex-flow: row nowrap;
    justify-content: center;
    align-items: center;
    line-height: 40px;

}
.accordion_top .accordion_brand>span::after{
    content: '';
    display: inline-block;
    width: 5px;
    height: 5px;
    border-top: 1px solid black;
    border-right: 1px solid black;
    margin: 5px;
    transform: rotate(135deg);
     transition: all 0.3s linear;
}
.accordion_top .accordion_brand.active>span::after{
    transform: rotate(45deg);
    transition: all 0.2s linear;
}
.accordion_content{
    width: 100%;
    height: 0px;
    transition: all 0.3s linear;
    overflow: hidden;
     z-index: 2;
}
.accordion_content.active{
   z-index: 2;
    height: 350px;
     transition: all 0.2s linear;
    
}
.accordion_top ul{
    list-style: none;
    width: 100%;
    
   
}
.accordion_top ul.active{
   
    visibility:visible;
   
    
}
.accordion_top ul li{
    width: 100%;
    height: 50px;
    border-bottom: 1px solid gray;
   background: whitesmoke;
   line-height: 50px;
}
</style>
