<template>
    <div class='icon_make-app'>
        <div class='bg_img'>
            <img src="../../../static/kind_img/music.jpg" alt="">
        </div>
        <div class='icon_img'>
            <div><img src="../../../static/author_img/author.jpg" alt=""></div>
            <div><span>小炎</span></div>
        </div>
        <div class='make-container'>
        <div class='make-content'>
           
                <div class='today_img'><img src="../../../static/kind_img/movie.jpg" alt=""></div>
               
                <div class='today_title'><span> 回忆像孩子一样，也爱。。。</span></div>
                
            
        </div>
         <div class='make'><img src="../../../static/img/theme-img/B1.png" alt="">制作小记</div>   
        
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
*{margin: 0;padding: 0;}
.icon_make-app{
    width: 100%;
    height: 350px;
    border: 1px solid black;
    position: absolute;
    top: 0;
    left: 0;
    
}
.icon_make-app .bg_img{
    width: 100%;
    height:100%;
    display: flex;
    flex-flow: column nowrap;
    justify-content: center;

}
.icon_make-app .bg_img img{
    width: 100%;
    height:350px;
}
.icon_make-app .icon_img{
    width: 100%;
    height: 40px;
    position: absolute;
    top:60px;
    
}
.icon_make-app .icon_img img{
   width:55px;
    height: 55px;
    border-radius: 50%;
    border: 1px solid gainsboro;
}
.icon_make-app .make-container{
     position: absolute;
        top:200px;
        width: 100%;
        
        
}
.icon_make-app .make-container .make-content{
    width: 120px;
    height: 110px;
    border: 1px solid gray;
    background: whitesmoke;
    margin: 0 auto;
    display: flex;
    flex-flow: column nowrap;
    justify-content: center;
 
   
}
/* icon_make-app make-container make-content today_img today_title */
.icon_make-app .make-container .make-content .today_img{
    width: 100%;
    height: 90px
}
.icon_make-app .make-container .make-content .today_img img{
    width: 100%;
    height: 90px;
}
.icon_make-app .make-container .make-content .today_title{
    width: 100%;
    height: 20px;
    font-size: 9px;
    line-height: 20px;  
  
    
}
.icon_make-app .make-container .make{
    position:absolute;
    width: 80px;
    height:20px;
    top:50%;
    left: 40%;
    
    
    display: flex;
    flex-flow: row nowrap;
   
    align-items: center;
    font-size: 14px;
    font-weight: 400;
    border: 2px solid gray;
    background:rgba(230, 230, 230, 0.5);
    color:#71706f;
    
}
.icon_make-app .make-container .make img{
    width: 15px; 
    height: 15px
}
</style>
