<template>
    <div class='theme-app'>
        <div class='theme-img'><img :src="img" alt=""></div>
        <div class='KAA'><span>{{kind}}</span>|<span>{{author}}</span></div>
        <div class='content'>{{content}}</div>
        <div class='location'>{{location}}</div>
        <div class='bot-item'>
            <div class='left-img'><img src="../../assets/theme-img/Z1.png" alt=""><div>发现</div></div>
            <div class='right-img'>
                <ul >
                   <li v-for="item of list" :key='item.id'><img :src='item.imggg' alt=""></li>
                    <li><img :src='love.imgg' alt=""><sup>{{love.count}}</sup></li>
                </ul>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            img:'../../static/img/theme-img/hua.jpg',
            kind:'摄影',
            author:'小布',
            content:'保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',
            location:'广州',
            love:{imgg:'../../static/img/theme-img/L1.png',count:'12222'},
            list:[{id:1,imggg:'../../static/img/theme-img/B1.png'},{id:2,imggg:'../../static/img/theme-img/S1.png'},{id:3,imggg:'../../static/img/theme-img/F1.png'}]
        }
    },
    methods:{
        getimg(){
            
            for(var item of this.list){
                console.log(item);
            }
        }
    },
    created(){
        this.getimg();
    }
}
</script>
<style scoped>
*{margin: 0;padding: 0;}
.theme-app{
    text-align: center;
    width: 96%;
    background: whitesmoke;
    font-size:12px;
      color: gray;
    margin:0 auto;
     border: 1px solid gray;
     box-shadow: 0 2px 3px black;
}
.theme-app .theme-img img{
    padding: 5px;
    margin: 3px;
      width: 95%;
   height: auto;
   border: 1px solid gray;
   outline: 1px solid black;
}
.theme-app .KAA span{
    margin: 10px;
  
}
.theme-app .content{
    text-align: left;
    font-size: 12px;
    color: black;
    width: 80%;
    margin: 5px;
    margin-left: 10%;
}
.theme-app .location{
    margin-bottom: 30px;
}
.theme-app .bot-item{
    display: flex;
    flex-flow: row nowrap;
    width: 92%;
    margin-left:4%;
    margin-right:4%;
    justify-content:space-between;
    height: 30px;
   
  
}
.theme-app .bot-item .left-img{
    display: flex;
    flex-flow: row nowrap;
    text-align: left;
    width: 50%;
     margin-top: 5px;
    
}
.theme-app .bot-item .left-img img{
    width: 18px;
    height:18px;
}
.theme-app .bot-item .left-img div{
        line-height: 20px;
        margin-left:3px;
}
.theme-app .bot-item .right-img{
    width:50%;
    height: 30px;
     line-height: 30px;
    
}
.theme-app .bot-item .right-img>ul{
    height: 100%;
    
    width: 95%;
    list-style: none;
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-between;
    
}
.theme-app .bot-item .right-img>ul>li>img{
    width: 15px;
    height: 15px;
}
.theme-app .bot-item .right-img>ul>li>sup{
    line-height:5px;
}
</style>
