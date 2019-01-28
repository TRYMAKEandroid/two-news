<template>
        <div class='accordion-app'>
            <div class='accordion-header'>
                <div class='left-accordion' @click="acc"><span>{{day}}</span><span>{{mouth_en}}.</span><span>{{year}}</span> <span class='arrow'>◢</span></div>
                <div class='right-info'><span>{{orientation}}</span>·<span>{{floor}}</span><span>{{temp}}</span>℃</div>
            </div>
            <div class='accordion-content'>
                
                <div class='mouth'>--1月--</div>
            <ul>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
                <li><div>2018-1-1</div><img src="../../../static/kind_img/movie.jpg" alt=""></li>
            </ul>
            </div>
            
        </div>
</template>
<script>
export default {
    data(){
        return{
            day:13,
            mouth_en:'Jan',
            year:2018,
            orientation:'地球',
            floor:'对流层',
            temp:-275,
            flag:0
        }  
    },methods:{
        acc(e){
            var accordion=document.querySelector('.accordion-app');
            var accordion_content=document.querySelector('.accordion-app .accordion-content');
            if(this.flag==0){
                accordion.classList.add('active');
                accordion_content.style.top=(e.pageY-45)+'px'
                accordion_content.scrollTo(0,8);
                this.flag=1;
                this.$emit('changeBodyC',1);
            }else{
                accordion.classList.remove('active');
                this.flag=0;

                
               this.$emit('changeBodyC',0);
               
            }
       
        },
         getp(e){
            console.log(e)
        }
    }
}
</script>
<style scoped>
*{margin: 0; padding: 0;}

.accordion-app{ 
    position:relative;
    top: 0;
    left: 0;
    background: whitesmoke;
     font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    font-size:12px;    
}
.accordion-app .accordion-header{
     background: whitesmoke;
    width: 100%;
    border: 1px solid gray;
    display: flex;
     box-shadow: 0 1px 2px black;
     flex-flow: row nowrap;
    justify-content: space-between;
    height: 40px;
    line-height: 40px;
    top: 0;
    left: 0;
    position: fixed;
    z-index: 2;
}
.accordion-app .left-accordion{
    margin-left: 5px;
}
.accordion-app .left-accordion>span:first-child{
    margin: 5px;
    font-size: 17px;
    font-weight: bolder;
    position: relative;
   
}

.accordion-app .left-accordion>.arrow{  /* 后期加折叠所用 ex:class替换*/
    display: block;
    
    position: absolute;
    left: 100px;
    top: 5px;
    -ms-transform: rotate(0);
    -webkit-transform: rotate(0);
    transform: rotate(0);
    transition: all 0.5s linear ;
}
.accordion-app.active .left-accordion>.arrow{
    
    color: red;
    left:100px;
    top:8px;
    -ms-transform: rotate(540deg);
    -webkit-transform: rotate(540deg);
    transform: rotate(540deg);
    transition: all 0.5s linear ;
    
}
.accordion-app .right-info{
    margin-right: 5px;
    line-height: 50px;
    color: gray;
}
.accordion-app .accordion-content{
   background: whitesmoke;
   width: 100%;
   z-index: 1;
    position: absolute;
    left:0;
    top: -18px;
    height: 0px;
    overflow: hidden;
    margin-bottom: 40px;
    opacity: 0;
    
    
}
.accordion-app.active .accordion-content{
    overflow-y: scroll;
   background: whitesmoke;
   width: 100%;
   z-index: 100;
    position: absolute;
    
   
    height:667px;
    opacity: 1;
    transition: all 0.3s linear;
    
}
.accordion-app .accordion-content>.mouth{
height: 30px;
font-size: 12px;
color: gray;
margin-bottom: 10px;
line-height: 30px;

    
}
.accordion-app .accordion-content>ul{
    display: flex;
   flex-flow: row wrap;
   justify-content: space-between;
    list-style: none;
}
.accordion-app ul>li{
    width: 46%;
    margin:1% 2%;
   
    
}
.accordion-app ul>li>div{
  height: 30px;
  line-height: 20px;
  border-top:2px solid black;
  
    
  
}
.accordion-app ul>li>img{
    width: 96%;
    height: auto;
  
}
</style>
