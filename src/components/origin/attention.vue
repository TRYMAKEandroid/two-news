<template>
    <div class='attention-app'>
        <div class='attention'>
            <img src="../../../static/attention_img/attention.png" alt=""><span>关注的人</span>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
.attention-app{
    font-size: 14px;
    margin: 3% 0;
}
.attention-app .attention{
    width: 96%;
    height: 40px;
    display: flex;
    flex-flow: row nowrap;
    justify-content:flex-start;
    align-items: center;
    border: 1px solid black;
    margin :0 2%;

}
.attention-app .attention img{
    width: 15px;
    height: 15x;
    margin-left: 10px;
}
.attention-app .attention span{
    text-align: left;
    text-indent: 10px;
}

</style>