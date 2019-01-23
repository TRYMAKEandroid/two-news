<template>
        <div class='nav_tab-app'>
            <div><img src="../../../static/nav_img/pic.png" alt=""><span>文章</span>
            </div>
            <div><img src="../../../static/nav_img/question.png" alt=""><span>问答</span></div>
            <div class='double_img'><img src="../../../static/nav_img/read.png" alt=""><span>阅读</span></div>
            <div><img src="../../../static/nav_img/txt.png" alt="" ><span>连载</span></div>
            <div><img src="../../../static/nav_img/movie.png" alt=""><span>影视</span></div>
            <div><img src="../../../static/nav_img/music.png" alt=""><span>音乐</span></div>
            <div><img src="../../../static/nav_img/station.png" alt=""><span>电台</span></div>
                
               
                
                
               
                
        </div>
</template>
<script>

export default {
    
}
</script>
<style scoped>
.nav_tab-app{

  
  width: 85%;
    margin: 0 auto;
    margin-top:60px;
  height: 95px;
  display: flex;
  flex-flow: row wrap;
  justify-content: space-around;
    margin-bottom: 60px;
}
.nav_tab-app div{
    width:22%;
  
    height: 65px;
    text-align: center;
    display: flex;
    flex-flow: column nowrap;
    justify-content: center;
    outline: 1px solid gainsboro;
    font-size:12px;
    margin :1% 1%;
    box-shadow: 2px 4px 3px black;
    
    
}

.nav_tab-app div.double_img{
    width: 50%
}
.nav_tab-app div>img{
    width: 40px;
    height: 40px;
    margin: auto auto;
    
    
}
.nav_tab-app div.double_img{
    width: 47%
}

</style>
