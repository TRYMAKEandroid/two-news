<template>
    <div class='special-app'>
            <div class='special_img'>
                <img src="../../../static/special_img/special.jpg" alt="">
            </div>
            <div class='special_title'>
                <div>我们在2018年追了这些剧</div>
            </div>
        </div>    
</template>
<script>
export default {
    
}
</script>
<style scoped>
.special-app{
    background: whitesmoke;
    
    width: 90%;
    margin: 70px 5% 30px;
    border: 1px solid black;
    border-bottom: 0;
    box-shadow: 1px 0px 2px black;
    display: flex;
    flex-flow: column nowrap;
    font-size: 14px;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;

}
.special-app .special_img{
    width: 100%;
   
}
.special-app .special_img img{
    width:100%;
    height: auto;
}
.special-app .special_title{
    height:50px; 
    
   line-height: 40px;
}
.special-app .special_title div{
    display: block;
    width: 96%;
    margin: 2% 2%;
    height:100%;
    
    border-top:2px solid black;
    
   
   
}
</style>
