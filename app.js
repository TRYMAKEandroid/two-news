const express = require('express');
const pool = require('./pool.js');
const cors = require('cors');
var app=express();
app.listen(3000,(err)=>{
    if(err) throw err
    console.log('创建端口3000成功');
})

app.use(express.static('static'));
app.use(cors({
    origin:['http://localhost:8080','http://127.0.0.1:8080'],
    credentials:true
}))

app.get('/login',(req,res)=>{
    var obj={};
    var uname=req.query.uname;
    if(!uname){
        obj.code=-2;
        obj.msg='用户名不能为空'
        res.send(obj);
        return;
    }
    var pwd=req.query.pwd
    if(!pwd){
        obj.code=-3;
        obj.msg='密码不能为空'
        res.send(obj);
        return;
    }
    console.log(uname,pwd)
    pool.query('select count(uid) as l from log_in where uname=? and pwd=md5(?)',[uname,pwd],(err,result)=>{
        if(err) throw err
        if(result[0].l==1){
            console.log(result[0].l)
            obj.code=1;
            obj.msg='登陆成功'
            res.send(obj);
        }else{
            obj.code=-1;
            obj.msg='登陆失败';
            res.send(obj);
        }
    })
    
})