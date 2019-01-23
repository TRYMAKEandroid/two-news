<template>
        <div class='hellow2'>
            <h3> 灵魂脱离</h3>
            <ul>
                <li v-for='item in list' :key='item.id'>{{item.msg}}</li>
            </ul>
        </div>
</template>
<script>
export default {
    data(){
        return{
            list:[{id:1,msg:'11'},{id:2,msg:'22'},{id:3,msg:'33'}]
        }
    }
}
</script>
<style scoped>

</style>
