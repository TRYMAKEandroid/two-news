<template>
    <div class='musiclist-app'>
        <div class='music_list'>
            <img src="../../../static/music_img/music.png" alt=""><span>歌单</span>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
.musiclist-app{
    font-size: 14px;
}
.musiclist-app .music_list{
    width: 96%;
    height: 40px;
    display: flex;
    flex-flow: row nowrap;
    justify-content:flex-start;
    align-items: center;
    border: 1px solid black;
    margin :0 2%;

}
.musiclist-app .music_list img{
    width: 15px;
    height: 15x;
    margin-left: 10px;
}
.musiclist-app .music_list span{
    text-align: left;
    text-indent: 10px;
}

</style>