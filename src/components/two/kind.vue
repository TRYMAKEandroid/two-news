<template>
    <div class='kind-app'>
        <div class='kindfor' v-for='item in list' :key="item.nid">
        <div class='kind-name'>-{{item.kname}}-</div>
        <div class='title'>{{item.title}}</div>
        <div class='author' v-if="item.kid!=4"><span>文</span>/<span>{{item.author}}</span></div>
        <div class='author' v-else><span>{{item.author}}</span></div>
         <div class='kind-img2' v-if="item.kid==5" @load="getmusic"><canvas id='m1' width="150" height="150"></canvas></div>
        <div class='kind-img3' v-else-if="item.kid==6"><img :src="item.img_url" alt=""></div>
       <div class='kind-img' v-else><img :src="item.img_url" alt=""></div>
        <div class='content'>{{item.content}} <p>-&nbsp;-《{{item.title}}》</p> </div>
        <div class='bnav'><div class='left-time'>{{item.ntime}}</div>
        <ul class='right-nav'>
            <li><img src="../../../static/img/theme-img/L1.png" alt=""><sup>{{item.lovecount}}</sup></li>
            <li><img src="../../../static/img/theme-img/F1.png" alt=""></li>
        </ul>
        </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{ 
            
            list:[]
            //1.onestory 2.恋爱课 3.连载 4.问答 5.音乐 6.影视
            // list:[  {kind_id:1,kind_name:'ONE STORY',title:'冰川纪元',img:'http://127.0.0.1:3000/kind_img/onestory.jpg',author:'xiaobu',content:'保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',data:'2018',loveCount:511},
            //         {kind_id:5,kind_name:'音乐',title:'冰川纪元',img:'http://127.0.0.1:3000/kind_img/music.jpg',author:'xiaobu',content:'保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',data:'2018',loveCount:515},
            //         {kind_id:4,kind_name:'问答',title:'冰川纪元',img:'http://127.0.0.1:3000/kind_img/question.jpg',author:'xiaobu',content:'保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',data:'2018',loveCount:514,music:'https://music.163.com/#/song?id=433223017'},
            //         {kind_id:6,kind_name:'影视',title:'冰川纪元',img:'http://127.0.0.1:3000/kind_img/movie.jpg',author:'xiaobu',content:'保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',data:'2018',loveCount:516},
            //         {kind_id:2,kind_name:'恋爱课',title:'冰川纪元',img:'http://127.0.0.1:3000/kind_img/loveclass.jpg',author:'xiaobu',content:'123456789',data:'2018',loveCount:512},
            //         {kind_id:3,kind_name:'连载',title:'冰川纪元',img:'http://127.0.0.1:3000/kind_img/text.jpg',author:'xiaobu',content:'123456789',data:'2018',loveCount:513}
            //     ]
                // 
                // 
                //  
                //   
        }
    },
    methods:{
        getmusic(){
        var m1=document.getElementById('m1');
        var context=m1.getContext('2d');
        var imgPath=''
        for(var item of this.list){
            if(item.kind_id==5){
                imgPath=item.img;
            }
        }
        var mPic=new Image()
        mPic.src=imgPath;
        mPic.width=375;
        mPic.height=275;    
        //
        context.drawImage(mPic, 0,0, 375, 275);
        
      
        
        }
    },
    mounted(){
       
       
        
    },
    created(){
        var time=new Date();
        var mouth=time.getMonth()+1;
        var day=time.getDate();
        var year=time.getFullYear();
       

        var ntime=`${year}-${mouth}-${day}`;
        this.axios.get('http://127.0.0.1:3000/getnews?ntime='+ntime).then(res=>{
                    var res=res.data.data;
                    this.list=res;
                    console.log(this.list)
        })
    }
}
</script>
<style scoped>
*{margin: 0;padding: 0}
.kindfor{
    margin-top:10px;
    border: 1px solid black;
}
#m1{
    /* border-radius: 50%; */
    border:1px solid black;
}
.kind-app{
    text-align: center;
    width: 96%;
   
    font-size: 12px;
     color: gray;
    
     margin: 0 auto; 
     margin-top: 10px;
     margin-bottom: 60px;
}
.kind-app .kind-name{
   margin-top:10px;
}
.kind-app .title{
    color: black;
    font-size: 14px;
   
}
.kind-app .author,.kind-app .title{
    text-align: left;
     margin-left: 10px;
     margin-top: 5px;
}
.kind-app .author>span{
    margin-right: 3px;
}
.kind-app .author>span:last-child{
    margin-left: 3px;
}
.kind-app .kind-img img{
     padding: 5px;
    margin: 3px;
      width: 95%;
   height: auto;
   border: 1px solid gray;
   outline: 1px solid black;
}
.kind-app .kind-img2{
     padding: 5px;
    margin:0 auto;
      width: 96%;
   height: 100%;
  
   
   overflow: hidden;
   
}
.kind-app .kind-img2 img{
     padding: 5px;
    margin: 3px;
      width: 95%;
   height: auto;
}
.kind-app .kind-img3 img{
     padding: 5px;
    margin: 3px;
      width: 90%;
   height: auto;
   border-top: 11px dashed gray;
   border-bottom: 11px dashed gray;
   
}

.kind-app .content{
   text-align: left;
    font-size: 12px;
    color: black;
    width: 80%;
   margin: 0 auto;
   height:100px; 
}
.kind-app .content p{
    float: right;
}
.kind-app .bnav{
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-between;
    height: 35px;
    width: 90%;
    margin: auto 5%;
   line-height:40px
}
.kind-app .bnav .left-time{
    line-height:40px;
}
.kind-app .bnav>ul{
    display: flex;
    flex-flow: row nowrap;
    list-style: none;
}
.kind-app .bnav>ul>li{
    margin-right: 8px;
    margin-left: 8px;
}

.kind-app .bnav>ul>li>img{
    width: 15px;
    height: 15px;
}
</style>
