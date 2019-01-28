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
// app.get('/regsiter',(req,res)=>{
//     var obj={};
//     var uname=req.query.uname;
//     if(!uname){
//         obj={code:-1,msg:'用户名不能为空'};
//         res.send(obj)
//         return;
//     }
//     var uname_reg=/^([\u4E00-\u9FA5]|[0-9]|[a-z]|[A-Z]){4,12}$/;
//     if(!uname_reg.test(uname)){
//         obj={code:-11,msg:'用户名格式不正确'}
//         res.send(obj)
//         return;
//     }
//     var pwd=req.query.pwd;
//     if(!pwd){
//         obj={code:-2,msg:'密码不能为空'}
//         res.send(obj)
//         return;
//     }
//     var pwd_reg=/^([0-9]|[a-z]|[A-Z]){6,12}$/;
//     if(!pwd_reg.test(pwd)){
//         obj={code:-22,msg:'密码格式不正确'}
//         res.send(obj)
//         return;
//     }
//     console.log(uname,pwd);
//    pool.query('insert into log_in values(null,?,md5(?))',[uname,pwd],(err,result)=>{
//         if(err) throw err;
//         console.log(result.affectedRows)
//         res.send(result.affectedRows);
//         // if(result.affectedRows){
//         //     obj={code:1,msg:'注册成功'};
//         //     res.send(obj);
//         //     return;
//         // }
//         // obj={code:2,msg:'已存在该用户'};
//         // res.send(obj);
//    })
    
// })
// app.get('/getYears',(req,res)=>{
//     pool.query('select * from dateY',(err,result)=>{
//         if(err) throw err;
//         if(result.length>0){
//         res.send(result)}else{
//             res.send('拿不到了');
//         }
//     })
// })
// app.get('/getMonths',(req,res)=>{
//     var yid=req.query.yid;
//     pool.query('select * from dateM where yid=?',[yid],(err,result)=>{
//         if(err) throw err;
//         if(result.length>0){
//             res.send(result)
           
//         }else{
//             res.send('拿不到了')
//             console.log(result)
//         }
//     })
// })
app.get('/getkinds',(req,res)=>{
    pool.query('select * from kind',(err,result)=>{
        if(err) throw err
        if(result.length>0){
            res.send(result)
        }else{
            res.send('拿不到了');
        }
    })
})
app.get('/getnewslist',(req,res)=>{
    var start = new Date(req.query.start);
    var endsub= new Date(req.query.endsub);
    var kid=req.query.kid;
    pool.query('select * from news where ntime >=? and ntime<? and kid=?',[start,endsub,kid],(err,result)=>{
        if(err) throw err
        if(result.length>0){
            res.send(result);
        }else{
            res.send('拿不到了');
        }
    })
})
app.get('/getMonth',(req,res)=>{
    var start=new Date(req.query.start);
    
    
    var end = new Date(req.query.end);
    pool.query('select distinct ntime from news where ntime between ? and ? group by ntime order by ntime desc',[start,end],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send('拿不到了');
            console.log(result)
        }
    })
})
app.get('/getYears',(req,res)=>{
    pool.query('select distinct ntime from news ntime group by ntime order by ntime desc',(err,result)=>{
        if(err) throw err;
        if(result.length>0){
        res.send(result);

    }
    })
})
app.get('/getnews',(req,res)=>{
    var ntime=req.query.ntime;
    ntime=new Date(ntime);  
    var obj={}; 
    pool.query('select n.*,k.kname from news n,kind k where n.kid=k.kid and n.ntime=?',[ntime],(err,result)=>{
        if(err) throw err;
        if(result==0){
            obj={code:-1,data:'error'}
        }else{
            obj={code:1,data:result}
        res.send(obj);}
    })
})
app.get('/isregister',(req,res)=>{
    var obj={};
    var uname=req.query.uname;

    var uname_reg=/^([\u4E00-\u9FA5]|[0-9]|[a-z]|[A-Z]){4,12}$/;
    if(uname_reg.test(uname)){
        pool.query('select count(uid) as l from log_in where uname=?',[uname],(err,result)=>{
            
            if(err) throw err;
           
            if(result[0].l==0){
            
            obj={code:1,msg:'可以注册的用户民'};
            res.send(obj);
            
            return;
        }else{
            obj={code:-1,msg:'该用户已存在'};
            res.send(obj);
           
        }
            
        }) 
    }
}) 
app.get('/regsiter',(req,res)=>{
    var obj={};
    var uname=req.query.uname;
    var pwd =req.query.pwd;
    if(!uname){
        obj={code:-1,msg:'用户名不能为空'}
        res.send(obj);
        return;
    }
    if(!pwd){
        obj={code:-2,msg:'密码不能为空'}
        res.send(obj);
        return;
    }
    var uname_reg=/^([\u4E00-\u9FA5]|[0-9]|[a-z]|[A-Z]){4,12}$/;
    var pwd_reg=/^([0-9]|[a-z]|[A-Z]|_|\.){6,12}$/;
    if(!uname_reg.test(uname)){
        obj={code:-3,msg:'用户名格式不正确'}
        res.send(obj);
        return;
    }
    if(!pwd_reg.test(pwd)){
        obj={code:-4,msg:'密码格式不正确'}
        res.send(obj);
        return;
    }
    pool.query('insert into log_in values(null,?,md5(?))',[uname,pwd],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            obj={code:1,msg:'注册成功'}
            res.send(obj);
            return;
        }
            obj={code:-5,msg:'注册失败'}
    })

    })
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
    
    pool.query('select count(uid) as l from log_in where uname=? and pwd=md5(?)',[uname,pwd],(err,result)=>{
        if(err) throw err
        if(result[0].l==1){
         
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