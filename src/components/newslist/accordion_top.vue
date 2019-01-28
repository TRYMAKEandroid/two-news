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
            index:0,
            ischecked:null,
            list:[],
            brand:'',
            kid:1
        }
    },
    methods:{
        ischeck(index){
            if(this.ischecked==index){
            this.ischecked=null;
            }else{
            this.ischecked=index;}
          
        },
        keepk(kid,kname){
            this.kid=kid;
            this.brand=kname;
            this.ischecked=null;
            this.$emit('putkid',this.kid);
        }
    },
    created(){
        this.axios.get('http://127.0.0.1:3000/getkinds').then((res)=>{
            var res=res.data;
            this.list=res;
        })
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
