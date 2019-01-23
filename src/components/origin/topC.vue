<template>
    <div class='topC-app'>
            <ul>
                <li><img src="../../../static/topC_img/set.png" alt=""></li>
                <li>小炎</li>
                <li><img src="../../../static/topC_img/msg.png" alt=""></li>
            </ul>
        </div>   
</template>
<script>
export default {
    
}
</script>
<style scoped>
*{margin: 0;padding: 0;}
.topC-app{
    height:40px;
    width: 100%;
    border:1px solid gray;
    position:absolute;
    top: 0;
    left: 0;
    z-index: 1;
}
.topC-app ul{
    list-style: none;
    display: flex;
    flex-flow: row nowrap;
    height: 40px;
    line-height:40px;
    justify-content: space-between;
    align-items: center;
    width:100%;
   
 
}
.topC-app ul>li{
    width: 20%;
    height:40px;
    
    margin:auto 0;
    display: flex;
    flex-flow: row nowrap;
    justify-content:center;
    align-items: center; 
}
.topC-app ul>li>img{
    width: 28px;
    height: 28px;
}
.topC-app ul>li:last-child>img{
    width: 19px;
    height: 19px;
}
</style>
