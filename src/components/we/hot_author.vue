<template>
    <div class='hot_author-app'>
        <div class='hot_header'>
            <div>近期热门作者</div>
        </div>
        
        <div class='author'>
            <div class='author_img'>
                <img src="../../../static/author_img/author.jpg" alt="">
            </div>
            <div class='author_detail'>
                <div class='author_name'>张晓航</div> 
                <div class='author_profession'>作家、编剧、银河系少先队大队长。。</div>
            </div>
            <div class='attention'>
                <div>关注</div>
            </div>
        </div>
         <div class='author'>
            <div class='author_img'>
                <img src="../../../static/author_img/author.jpg" alt="">
            </div>
            <div class='author_detail'>
                <div class='author_name'>张晓航</div>
                <div class='author_profession'>作家、编剧、银河系少先队大队长。。</div>
            </div>
            <div class='attention'>
                <div>关注</div>
            </div>
        </div>
        <div class='author_exchange'>换一换</div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
.hot_author-app{
    
    border: 1px solid black;
    width: 96%;
    margin:0 2% 80px;
    font-size: 14px;
    text-align: left;
    font-weight: bold;
}
.hot_author-app .hot_header{
    height: 30px;
    text-align: left;
    padding-left: 10px;
    line-height: 30px;
     border-bottom: 1px solid black;
}
.hot_author-app .author{
    height: 80px;
    width: 100%;
    border-bottom: 1px solid black;
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-between;
   align-items: center;
   padding-right:5px;
   padding-left:5px;
    
    
}
.hot_author-app .author>.author_img{
    width: 50px;
    height: 50px;
}
.hot_author-app .author>.author_img img{
    width: 100%;
    height:100%;
    border-radius: 50%;
}
.hot_author-app .author .author_detail>.author_name{
    font-size: 14px;
    font-weight: bold; 
}
.hot_author-app .author .author_detail>.author_profession{
    font-size:12px;
    color:gray;
}
.hot_author-app .author>.attention{
        width: 40px;
        height: 30px;
        border: 1px solid gray;
        line-height: 30px;   
        text-align: center;
}
.hot_author-app .author_exchange{
    border: 1px solid black;
    width: 20%;
    height: 25px;
    margin: 5% 40%;
    text-align: center;
}
</style>
