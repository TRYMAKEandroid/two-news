<template>
    <div class='accordion_date-app'>
        <div class='accordion_date' :class='{"active":index==ischecked}' >
            <div class='accordion_brand' @click='ischeck(index)'><span>{{yname}}年{{mname}}月</span><span>请选择日期</span></div>
              <div class='top'></div>
                <div class='bottom'></div>
            <div class='accordion_content'> 
              
                <div class='choose_date'>
                                   
                        <div class='year'>
                           <ul>
                               <li></li>
                             <li v-for='(item,i) of listy' :key="i" @click='Yischeck(i,item)' :class='{"active":i==Yischecked}'>{{item}}</li>
                           </ul>
                        </div>
                        <div class='month'>
                            <ul>
                                <li></li>
                                <li v-for='(item,i) of listm' :key="i" @click='Mischeck(i,item)' :class='{"active":i==Mischecked}'>{{item}}</li>
                            </ul>
                        </div>
                </div>
                <div class='issubmit' @click='surecheck()'><span>确定</span></div>
            </div>
        </div>

    </div>
</template>
<script>
export default {
        data(){
            return{
                listy:[],
               listm:[],
                Yischecked:0,
                Mischecked:0,
                ischecked:null,
                index:0,
                mname:null,
                yname:null
            }
        },
        methods:{
            surecheck(){
                this.ischecked=null;
                if(this.mname&&this.yname){
                    this.$emit('putdate',this.yname,this.mname);
                }
            },
            ischeck(index){
                if(this.ischecked==index){
                    this.ischecked=null
                 
                }else{
                    this.ischecked=index
                    // this.axios.get('http://127.0.0.1:3000/getDays').then((res)=>{
                    //     var res=res.data;
                    // })
                    //    if(this.mid!=null)
                    // this.$emit('putmid',this.mid);
                }
            },
            Yischeck(index,yname){
                this.listm=[];
                if(this.Yischecked!=index){
                   this.yname=yname;
                    this.Yischecked=index
                    // this.axios.get('http://127.0.0.1:3000/getMonths?yid='+yid).then((res)=>{
                    //     var res=res.data;
                    //     this.listm=res
                        
                    // })
                    var start=new Date(`${yname}-1-1`);
                    var end=new Date(`${yname}-12-31`);
                    this.axios.get('http://127.0.0.1:3000/getMonth?start='+start+'&end='+end).then((res)=>{
                        var res=res.data;
                         for(var i in res){
                        var month1=0;
                        if(i>0){
                            var month1=new Date(res[i-1].ntime).getMonth()+1;
                        }
                            var month2=new Date(res[i].ntime).getMonth()+1;
                        if(month1!=month2){
                            this.listm.push(month2);
                            
                        }
                    
                    }
                            });
                        }
                        
            },
            Mischeck(index,mname){
                if(this.Mischecked!=index){
                    this.Mischecked=index
                    this.mname=mname
                }
            },
        },
        created(){
            this.yname=new Date().getYear()+1900;
            this.mname=new Date().getMonth()+1;
            this.axios.get('http://127.0.0.1:3000/getYears').then((res)=>{
                var res=res.data;
               for(var i in res){
                //    this.listy.push  
                var year1=0;   
                if(i>0){
                    var year1=new Date(res[i-1].ntime).getFullYear();
                }
                    var year2=new Date(res[i].ntime).getFullYear();
                if(year1!=year2){
                    this.listy.push(year2);
                    
                }
               
               }
                
            })
            // this.axios.get('http://127.0.0.1:3000/getYears').then((res)=>{
            //     var res=res.data;
            //     this.listy=res;
            // });
        }
}
</script>
<style scoped>
*{margin: 0;padding: 0;}
.accordion_date .accordion_brand>span:first-child::after{
    content: '';
    display: inline-block;
    width: 5px;
    height: 5px;
    border-top: 1px solid black;
    border-right: 1px solid black;
    margin: 5px;
    transform: rotate(135deg);
    
}

.accordion_date-app{
    position: relative;
    width: 100%;
    color:gray;
}
.accordion_date{
    width: 100%;
    height: 30px;
    line-height: 30px
}
.accordion_date .accordion_brand{
    text-align: center;
    height: 30px;
    width: 100%;
}
/* .accordion_date .accordion_brand .accordion_content{} */
.accordion_date .accordion_brand>span{
    display: none
}
.accordion_date .accordion_brand>span:first-child{
    display: inline
}
.accordion_date.active .accordion_brand>span:first-child{
    display: none
}
.accordion_date.active .accordion_brand>span:last-child{
    display: inline
}
.accordion_date .accordion_content{  /*active*/
    width: 100%;
    background: red;
    height:0px;
    overflow: hidden;
    position: absolute;
    left: 0px;
    top:30px;
    z-index: 1;
    transition: all 0.2s linear;
}
.accordion_date.active .accordion_content{  /*active*/
    height:120px;
    transition: all 0.3s linear;

    
}
/* .accordion_date .top{
    width: 100%;
    position: absolute;
    height: 30px;
    top: 30px;
    left: 0px;
    background: pink;
    opacity: 0.5;
    z-index: 1;
}
.accordion_date .bottom{
    width: 100%;
    position: absolute;
    height: 30px;
    top: 90px;
    left: 0px;
    background: pink;
    opacity: 0.5;
    z-index: 1;
} */
.accordion_date .accordion_content .choose_date{
    height: 90px;
    width: 100%;
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-around;
    background: pink;
    justify-items: center;
    overflow: hidden;
  
    
    
}

.accordion_date .accordion_content .choose_date>div{
    overflow: hidden;
    width: 100%;
}
.accordion_date.active .accordion_content .choose_date .year{
   
    overflow-y: scroll;
}
.accordion_date.active .accordion_content .choose_date .month{
   
    overflow-y: scroll;
}
.accordion_date .accordion_content .choose_date ul{
    list-style: none;
    width: 100%;
   
}
.accordion_date .accordion_content .choose_date ul>li{
   height: 30px;
   line-height: 30px;
  
}
.accordion_date .accordion_content .choose_date ul>li.active{
   color: black;
    border-bottom: 1px solid black;
}
.accordion_date .accordion_content .issubmit{
    height: 30px;
    border-top:1px solid black;
    width: 100%;
    background: gray;
    position:absolute;
    top: 90px;
    left: 0px;
    z-index: 1;
    color: black;
    line-height: 30px;
}
</style>
