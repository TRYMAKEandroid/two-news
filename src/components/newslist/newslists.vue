<template>
    <div class='newslists-app'>
        <h3>asdasdasd</h3>
        <div class='newslists'>
            <ul>
                <li v-for='(item,i) in listd' :key=i>{{item.kid}}</li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            listd:[],
           
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
          console.log(this.yname,this.mname);
          var start=`${this.yname}-${this.mname}-1`;
          var endsub=`${this.yname}-${this.mname+1}-1`;
          this.axios.get('http://127.0.0.1:3000/getnewslist?start='+start+'&endsub='+endsub+'&kid='+this.kid).then((res)=>{
              var res=res.data;
              this.listd=res;
              console.log(this.listd)
          })
       },
      
    }
}
</script>
<style scoped>
*{margin: 0;padding: 0;}

</style>
