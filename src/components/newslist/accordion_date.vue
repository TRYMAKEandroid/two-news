<template>
  <div class="accordion_date-app">
    <div class="accordion_date" :class="{'active':index==ischecked}">
      <div class="accordion_brand" @click="ischeck(index)">
        <span>{{yname}}年{{mname}}月</span>
        <span>请选择日期</span>
      </div>
      <div class="top"></div>
      <div class="bottom"></div>
      <div class="accordion_content">
        <div class="choose_date">
          <div class="year">
            <ul>
              <li></li>
              <li v-for="(item,i) of listy" :key="i" @click="Yischeck(i,item)" :class="{'active':i==Yischecked}">{{item}}</li>
            </ul>
          </div>
          <div class="month">
            <ul>
              <li></li>
              <li v-for="(item,i) of listm" :key="i" @click="Mischeck(i,item)" :class="{'active':i==Mischecked}">{{item}}</li>
            </ul>
          </div>
        </div>
        <div class="issubmit" @click="surecheck()">
          <span>确定</span>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      listy: [],
      listm: [],
      Yischecked: 0,
      Mischecked: 0,
      ischecked: null,
      index: 0,
      mname: null,
      yname: null,
      
    };
  },
  methods: {
    surecheck() {
      this.ischecked = null;
      if (this.mname && this.yname) {
        this.$emit("putdate", this.yname, this.mname);
      }
    },
    ischeck(index) {
      if (this.ischecked == index) {
        this.ischecked = null;
      } else {
        this.ischecked = index;
        
        // this.axios.get('http://127.0.0.1:3000/getDays').then((res)=>{
        //     var res=res.data;
        // })
        //    if(this.mid!=null)
        // this.$emit('putmid',this.mid);

        // this.axios.get('http://127.0.0.1:3000/getMonths?yid='+yid).then((res)=>{
        //     var res=res.data;
        //     this.listm=res

        // })

        // if(this.selectM){
        //     this.selectM=false;
        // var start=new Date(`${this.yname}-1-1`);
        // var end=new Date(`${this.yname}-12-31`);
        // this.axios.get('http://127.0.0.1:3000/getMonth?start='+start+'&end='+end+'&kid='+this.kid).then((res)=>{
        //     var res=res.data;
        //     console.log(res);
        //      for(var i in res){
        //     var month1=0;
        //     if(i>0){
        //         var month1=new Date(res[i-1].ntime).getMonth()+1;
        //     }
        //         var month2=new Date(res[i].ntime).getMonth()+1;
        //     if(month1!=month2){
        //         console.log(month2)
        //         this.listm.push(month2);

        //     }
        //     this.mname=this.listm[0];
        //                     }
        // });

        //      }
      }
    },
    Yischeck(index, yname) {
      // this.selectM=true
      this.listm = [];
      if (this.Yischecked != index) {
        this.yname = yname;
        this.Yischecked = index;
        // this.axios.get('http://127.0.0.1:3000/getMonths?yid='+yid).then((res)=>{
        //     var res=res.data;
        //     this.listm=res

        // })
        console.log(this.selectY(this.yname,this.kid))
        this.listm=this.selectY(this.yname,this.kid)
        console.log(this.listm);
      }
    },
    Mischeck(index, mname) {
      if (this.Mischecked != index) {
        this.Mischecked = index;
        this.mname = mname;
      }
    },
    /**
     * @param yname:提前年份
     * @param kid:当前种类id
     * @param selectY:利用kid和yname查询数据库的月份在通过筛选返回一个月份不相等的数组
     */
    selectY(yname, kid) {
      console.log(yname,kid)
      var start = new Date(`${yname}-1-1`);  //年第一天
      var end = new Date(`${yname}-12-31`); //年最后一天
      

      return this.axios
        .get(
          "http://127.0.0.1:3000/getMonth?start=" + start + "&end=" + end + "&kid=" + kid
        )
        .then(res => {
          var res = res.data;
          var listm=[];
          for (var i in res) { //默认month1=0 从第二次开始判断m1是否对于m2从而筛选出不相等的月份 
            var month1 = 0;
            if (i > 0) {
              var month1 = new Date(res[i - 1].ntime).getMonth() + 1;
            }
            var month2 = new Date(res[i].ntime).getMonth() + 1;
            if (month1 != month2) {
            //   console.log(month2);
            listm.push(month2);
            //   console.log(listm)
            }
          }
         
          return listm
        });
        
    },
    selectM() {}
  },
  props: ["kid"],
  created() {
    // this.selectM=true;
    this.yname = new Date().getFullYear(); //初始化时间，默认今天
    this.mname = new Date().getMonth() + 1; //同上
    this.$emit("putdate", this.yname, this.mname); //把yname mname通过 event up发给父主键
    this.listy = []; //在实例后清空listy 年表
    this.listm = []; //同上 月表
    // console.log(this.yname,this.mname);

    // this.yname=new Date().getYear()+1900;
    // this.mname=new Date().getMonth()+1;
    // console.log(this.yname,this.mname);
    this.axios
      .get("http://127.0.0.1:3000/getYears?kid=" + this.kid)
      .then(res => {
        var res = res.data;
        for (var i in res) {
          //    this.listy.push
          var year1 = 0;
          if (i > 0) {
            var year1 = new Date(res[i - 1].ntime).getFullYear();
          }
          var year2 = new Date(res[i].ntime).getFullYear();
          if (year1 != year2) {
            this.listy.push(year2);
          }
        }
      });

    // this.axios.get('http://127.0.0.1:3000/getYears').then((res)=>{
    //     var res=res.data;
    //     this.listy=res;
    // });
  },
  watch: {
    kid() {
      this.listy = [];
      this.listm = [];
      console.log(this.kid);
      var progress = 0;
      this.axios
        .get("http://127.0.0.1:3000/getYears?kid=" + this.kid)
        .then(res => {
          var res = res.data;
          for (var i in res) {
            //    this.listy.push
            var year1 = 0;
            if (i > 0) {
              var year1 = new Date(res[i - 1].ntime).getFullYear();
            }
            var year2 = new Date(res[i].ntime).getFullYear();
            if (year1 != year2) {
              this.listy.push(year2);
            }
          }
          progress == 100;
        });
      if (progress == 100) {
        var start = new Date(`${this.listy[0]}-1-1`);
        var end = new Date(`${this.listy[0]}-12-31`);
        this.axios
          .get(
            "http://127.0.0.1:3000/getMonth?start=" +
              start +
              "&end=" +
              end +
              "&kid=" +
              this.kid
          )
          .then(res => {
            var res = res.data;
            console.log(res);
            for (var i in res) {
              var month1 = 0;
              if (i > 0) {
                var month1 = new Date(res[i - 1].ntime).getMonth() + 1;
              }
              var month2 = new Date(res[i].ntime).getMonth() + 1;
              if (month1 != month2) {
                console.log(month2);
                this.listm.push(month2);
              }
              this.mname = this.listm[0];
            }
          });
      }
    }
  }
};
</script>
<style scoped>
* {
  margin: 0;
  padding: 0;
}
.accordion_date .accordion_brand > span:first-child::after {
  content: "";
  display: inline-block;
  width: 5px;
  height: 5px;
  border-top: 1px solid black;
  border-right: 1px solid black;
  margin: 5px;
  transform: rotate(135deg);
}

.accordion_date-app {
  position: relative;
  width: 100%;
  color: gray;
}
.accordion_date {
  width: 100%;
  height: 30px;
  line-height: 30px;
}
.accordion_date .accordion_brand {
  text-align: center;
  height: 30px;
  width: 100%;
  color: black;
  background: whitesmoke;
}
/* .accordion_date .accordion_brand .accordion_content{} */
.accordion_date .accordion_brand > span {
  display: none;
}
.accordion_date .accordion_brand > span:first-child {
  display: inline;
}
.accordion_date.active .accordion_brand > span:first-child {
  display: none;
}
.accordion_date.active .accordion_brand > span:last-child {
  display: inline;
}
.accordion_date .accordion_content {
  /*active*/
  width: 100%;

  height: 0px;
  overflow: hidden;
  position: absolute;
  left: 0px;
  top: 30px;
  z-index: 1;
  transition: all 0.2s linear;
}
.accordion_date.active .accordion_content {
  /*active*/
  height: 130px;
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
.accordion_date .accordion_content .choose_date {
  height: 90px;
  width: 100%;
  display: flex;
  flex-flow: row nowrap;
  justify-content: space-around;
  background: whitesmoke;
  justify-items: center;
  overflow: hidden;
}

.accordion_date .accordion_content .choose_date > div {
  overflow: hidden;
  width: 100%;
}
.accordion_date.active .accordion_content .choose_date .year {
  overflow-y: scroll;
}
.accordion_date.active .accordion_content .choose_date .month {
  overflow-y: scroll;
}
.accordion_date .accordion_content .choose_date ul {
  list-style: none;
  width: 100%;
}
.accordion_date .accordion_content .choose_date ul > li {
  height: 30px;
  line-height: 30px;
}
.accordion_date .accordion_content .choose_date ul > li.active {
  color: black;
}
.accordion_date .accordion_content .issubmit {
  height: 40px;
  border-top: 3px solid gray;
  width: 100%;
  background: whitesmoke;
  position: absolute;
  top: 90px;
  left: 0px;
  z-index: 1;
  color: black;
  line-height: 40px;
}
</style>
