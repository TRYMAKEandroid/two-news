<template>
    <div class='newslists-app'>
        
        <div class='newslists'>
            <!-- <ul>
                <li v-for='(item,i) in listd' :key=i>
                    <div class='imgUrl'><img :src="item.img_url"></div>
                    <div class='content'>
                    <div>{{item.title}}</div>
                    <div>{{item.content}}</div>
                    </div>
                </li> -->
            <ul >
				<li v-for='(item,i) in listd' :key='i'>
					<div class='newslist-content'>
						<img  :src="item.img_url" class='imgUrl'>
						<div class='newslist-body'>
							{{item.title}}
							<p class='content'>{{item.content}}</p>
						</div>
					</div>
				</li>
			
				
			</ul>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            listd:[],
           yname2:null,
           mname2:null
        }
    },
    props:['yname','mname','kid'],
    methods:{
        
    },
    watch:{ 
    //     kid(){
    //        this.yname=0;
    //        this.mname=0;
    //    },
       mname(){
           this.yname2=this.yname;
           this.mname=this.mname;
          var start=`${this.yname}-${this.mname}-1`;
          var endsub=`${this.yname}-${this.mname+1}-1`;
          this.axios.get('http://127.0.0.1:3000/getnewslist?start='+start+'&endsub='+endsub+'&kid='+this.kid).then((res)=>{
              var res=res.data;
              this.listd=res;
          })
       },
       kid(){
           if(this.yname2==this.yname||this.mname2==this.mname){
          var start=`${this.yname}-${this.mname}-1`;
          var endsub=`${this.yname}-${this.mname+1}-1`;
          this.axios.get('http://127.0.0.1:3000/getnewslist?start='+start+'&endsub='+endsub+'&kid='+this.kid).then((res)=>{
              var res=res.data;
              this.listd=res;
            })
          }
       }
      
    }
}
</script>
<style scoped>
*{margin: 0;padding: 0;}
.newslists-app{
    width: 100%;
    background:whitesmoke;
    font-size: 12px;
    
}
.newslists{
    width:100%;

}
.newslists ul{
    width: 100%;
    list-style: none;
}
.newslists ul li{
    width:100%;
    height: 50px;
   
}
.newslist-content{
    border-bottom: 1px solid gray;
    display: flex;
    flex-flow: row nowrap;
    align-items: center;
}
.newslist-content img{
   width: 40px;
   height: 40px;
   margin: 5px 5px;
}
.newslist-content .newslist-body{
  text-align: left;
  width: 100%;
}
.newslist-content .newslist-body>p{
    white-space: nowrap;    
    text-overflow: ellipsis;
    font-size: 12px;
   
}
</style>
