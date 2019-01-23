<template>  
        <div class='login-app'>
            <div class='LAG'>
                <div  @click='clickLAG(1)' :class="{'active':1===isActive}">注册</div>
                <div  @click='clickLAG(2)' :class="{'active':2===isActive}">登陆</div>
            </div>
            <div class='login active'>
            <form>
            <ul>
                <li><div>用户：</div><div><input type="text" name='uname' id='uname' v-model='uname'  @blur.prevent="isregister"></div><span :class='unameA' v-if='isActive===1'>{{unameI}}</span></li>
                <li><div>密码：</div><div><input type="password" name='pwd' id='pwd' v-model='pwd'></div><span :class='pwdA' v-if='isActive===1'>{{pwdI}}</span></li>
                <li v-if='isActive===1'><div>确认密码：</div><div><input type="password" name='opwd' id='opwd' v-model='opwd'></div><span>{{opwdI}}</span></li>
            </ul>

            <button @click.prevent="register" v-if='isActive===1'>注册</button>
            <button @click.prevent="login" v-if='isActive===2'>登陆</button>

            </form>
            </div>



            
           
           
           
        </div>
</template>
<script>
import {Toast} from 'mint-ui'
export default {
    data(){
        return{
            uname:'',
            pwd:'',
            opwd:'',
            unameI:'',
            pwdI:'',
            opwdI:'',
            unameF:false,
            isActive:1,
            unameA:{
                "nactive":false
            },
            
            pwdA:{
                "pactive":false
            }
        }
    },
    methods:{
        isregister(){
            
            this.axios.get('http://127.0.0.1:3000/isregister?uname='+this.uname).then(res=>{
                var result=res.data;
               
                if(result.code==1){
                    this.unameA['nactive']=false;
                  this.unameF=false;
                 
                }else{  
                
                    this.unameA['nactive']=true
                    this.unameF=true;
                    
                }
               this.unameI=result.msg;
            })
        },
        register(){
           
            if(this.pwd!==this.opwd){
                this.opwdI='密码不一致';
            }
            if(this.pwd===this.opwd&&this.unameA['nactive']==false&&this.pwdA['pactive']==false){
               
                   this.axios.get('http://127.0.0.1:3000/regsiter?uname='+this.uname+'&pwd='+this.pwd).then(res=>{
                       var res=res.data;
                        Toast(res.msg)
                        
                   })
            }
           
        },
        login(){
           
            if(this.pwd&&this.uname){
                this.axios.get('http://127.0.0.1:3000/login?uname='+this.uname+'&pwd='+this.pwd).then(res=>{
                     var res=res.data
                     
                        Toast(res.msg)
                    this.$router.push('/two')
                })
            }else{
                 Toast('密码或者用户名不对T_T')
            }
        },
        clickLAG(i){
            this.isActive=i;
             this.uname='';
            this.pwd='';
            this.opwd='';
        },
    },
    watch:{
        uname(val,oval){
          
            var ureg=/^([\u4E00-\u9FA5]|[0-9]|[a-z]|[A-Z]){4,12}$/
            if(this.unameF==false){
             this.unameA['nactive']=false
             this.unameI='papapapa~~~~T_T'
                }
            if(!ureg.test(val)){
                
               this.unameA['nactive']=true
            this.unameI='用户名请保持在4-12位有效数字，字母或中文'
            } 
            if(oval.length-val.length>0){
                 this.unameI='';
               
             }
        },
        pwd(val,oval){
            var ureg=/^([0-9]|[a-z]|[A-Z]|_|\.){6,12}$/
             this.pwdA['pactive']=false
             this.pwdI='该密码格式正确'
             
            if(!ureg.test(val)){
               
               this.pwdA['pactive']=true
            this.pwdI='密码请保持在6-12位有效数字，字母或中文'
            } 
            if(oval.length-val.length>0){
                 this.pwdI='';
                
             }
        },
        opwd(val,oval){
            if(oval.length-val.length>0){
                this.opwdI='';  
            }
        }
    }
}
</script>
<style scoped>
*{margin:0 ;padding: 0}
.login-app{
    width: 100%;
    
}
.login-app .LAG{
    display: flex;
    flex-flow: row nowrap;
    justify-content: center;
    margin-bottom: 20%;
    
}
.login-app .LAG>div{
  
    height: 40px;
    line-height: 40px;
    width:30%;
    background: whitesmoke;
}
.login-app .LAG>div.active{
    border-bottom: 3px solid blue;
}
.login-app>div{
    display: none;
}
.login-app>div.active{
    display: block; 
}
.login-app>div ul{
    list-style: none;
    width: 100%;
    display: flex;
    flex-flow:column nowrap;
    justify-content: center;
    align-items: center;
}
.login-app>div li{
    display: flex;
    flex-flow: column nowrap;
    justify-content: space-around;
   text-align: left;
    width: 90%;
    height: 100px;
    
}
.login-app>div li input{
  
    width: 100%;
}
.login-app>div li span.nactive{
    display: block;
    color: red
    
}
.login-app>div li span.pactive{
    display: block;
    color: red
    
}
.login-app>div li:last-child span{
    display: block;
    color: red
    
}
.login-app>div li span{
   
    color: green;
}
.login-app>div button{
    width:90%;
    height: 40px;
    margin-top: 20px;
}

</style>
