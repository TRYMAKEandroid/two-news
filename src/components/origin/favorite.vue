<template>
    <div class='favorite-app'>
       <div class='bg_white'></div>
       <div class='navbar'>
        <div class='navbar-brand'><span>我的收藏</span></div>
        <div class='navbar-content'>
        <ul>
            <li><img src="../../../static/favorite_img/tu.png" alt=""><span>图文</span></li>
            <li><img src="../../../static/favorite_img/shu.png" alt=""><span>文章</span></li>
            <li><img src="../../../static/favorite_img/sheng.png" alt=""><span>音乐</span></li>
            <li><img src="../../../static/favorite_img/yin.png" alt=""><span>影视</span></li>
            <li><img src="../../../static/favorite_img/dian.png" alt=""><span>电台</span></li>
        </ul>
        </div>
       </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
*{margin: 0; padding: 0;}
.favorite-app{
    font-size:12px;
}
.favorite-app .bg_white{
    margin-top:350px;
    background:whitesmoke;
    height: 10px;
    width: 100%;
    
}
.favorite-app .navbar{
    width: 96%;
    margin :0 2%;
    border: 1px solid black; 

}
.favorite-app .navbar .navbar-brand{
    text-align: left;
    text-indent: 10px;
}
.favorite-app .navbar .navbar-content{
    height: 60px;
}
.favorite-app .navbar .navbar-content ul{
    list-style: none;
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-around;
    align-items: center;
    text-align: center;
     width: 96%;
     margin: 0 2%;
    
}
.favorite-app .navbar .navbar-content ul li{
    display: flex;
    flex-flow:column nowrap;
    justify-content: space-around;
    align-items: center;
    width: 18%;
    height: 100%
}
.favorite-app .navbar .navbar-content ul li img{
 width: 35px;
  height: 35px;
}
</style>