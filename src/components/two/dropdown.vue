<template>
    <div class='dropdown-app'>
         <div class='dropdown'>
        <div class='top-drop' @click='dropdown'>一个VOL.{{num}} <img src="../../assets/dropdown/Barrow.png"/> </div>
       
        <ul>
            <li><div>ONE STORY</div><div>冰川纪元</div></li>
            <li><div>恋爱课</div><div>冰川纪元</div></li>
            <li><div>连载</div><div>冰川纪元</div></li>
            <li><div>问答</div><div>冰川纪元</div></li>
            <li><div>音乐</div><div>冰川纪元</div></li>
            <li><div>影视</div><div>冰川纪元</div></li>
        </ul>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            num:2289,
            flag:0
        }    
    },
    methods:{
        dropdown(){
            var ul=document.querySelector('.dropdown-app>.dropdown>ul')
            var dropdown=document.getElementsByClassName('dropdown')[0]
            var Bimg=document.querySelector('.dropdown-app .top-drop>img')
            
            if(this.flag==0){
                ul.style.display='block';
                this.flag=1;
                dropdown.classList.add('active');
                Bimg.classList.add('active');
                // var lis=document.querySelectorAll('.dropdown-app>ul>li')
                // for(var li of lis){
                //     console.log(li)
                // }
            }else{
                ul.style.display='none';
                 dropdown.classList.remove('active');
                  Bimg.classList.remove('active');
                this.flag=0;
            }
           

        }
    },
    created(){
        this.flag=0;
    }
}
</script>
<style scoped>
*{padding:0;margin: 0;}
.dropdown-app{
    width:96%;
    
    margin: 0 auto;
    margin-top: 10px;
    font-size:12px;
    color:gray;
    text-align: center;
    border: 1px solid gray;
    background: whitesmoke;
    /* margin-bottom: 60px; */
}
.dropdown-app .top-drop{
    height: 30px;
    line-height: 30px;
    background: transparent;
    box-shadow: 0 1px 1px black;
}
.dropdown-app .top-drop>img{
    width: 10px;
    height:10px;
    transform: rotate(0deg);
    transition: all 0.5s;
}
.dropdown-app .top-drop>img.active{
    width: 10px;
    height:10px;
    transform: rotate(180deg);
    transition: all 0.5s;
}

.dropdown-app .dropdown{
    overflow: hidden;
    height:30px;
     transition: all 0.3s linear;
     box-shadow: 0 1px 1px black;
     margin:0;
     
}
.dropdown-app .dropdown.active{
    height:380px;
    transition: all 0.5s linear;
    
}
 .dropdown-app>.dropdown>ul{
     width: 94%;
     margin:3%;

    
     text-align: left;
     text-indent: 15px;
 }
 .dropdown-app>.dropdown>ul>li{
    height:45px; 
    opacity:1;
    border: 1px solid gray;
    margin:5px 0px;
    margin-bottom: 10px;
    display: flex;
    flex-flow: column nowrap;
    justify-content: space-between;
    background: url('../../assets/dropdown/Rarrow.png') no-repeat 0% 50%;
   transition: all 0.5s linear;
   
}
 .dropdown-app>.dropdown>ul>li>div:first-child{
     font-size:9.5px;
 }
  .dropdown-app>.dropdown>ul>li>div:last-child{
     font-size:12px;
 }
 .dropdown-app>.dropdown>ul>li:hover{
     
     opacity: 0.5;
     
     transition: opacity 0.3s linear;
 }


</style>
