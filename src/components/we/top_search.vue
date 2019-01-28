<template>
    <div class='top_search-app'>
       

      
        <div class='search_brand'>
            <ul>
                <li>TWO</li>
                <li>WE</li>
                <li>ORIGIN</li>
            </ul>
        </div>
       
        <div class='search_item' @click='rightMoveSearch'><img src="../../../static/search_img/search.png" alt=""></div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            
        }
    },
    methods:{
        rightMoveSearch(){
            
        }
    }
}
</script>
<style scoped>
*{margin:0;padding: 0;}
.top_search-app{
    position:fixed;
    border: 1px solid gray;
    height: 40px;
    width: 100%;   
   background: whitesmoke;
   left: 0;
   top: 0;
}
.top_search-app .search_brand{
    text-align: center;
    line-height: 40px;
}
.search_brand ul{
    margin: 0% 30%;
    width: 40%;
    list-style: none;
    display: flex;
    flex-wrap: nowrap;
    justify-content: center;
    font-size: 16px;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
     font-weight: bold;
}
.search_brand ul>li{
    width:30%;
}
.top_search-app .search_item{
    position: absolute;
    top: 8px;
    right:9px
}
.top_search-app .search_item img{
    width: 21px;
    height:21px;
}
</style>
