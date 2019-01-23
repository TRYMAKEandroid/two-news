<template>
    <div class='origin-app'>
        <my-topC></my-topC>
        <my-icon-make></my-icon-make>
        <my-favorite></my-favorite>
        <my-attention></my-attention>
        <my-music></my-music>
    </div>
</template>
<script>
import topC from '@/components/origin/topC.vue'
import icon_make from '@/components/origin/icon_make.vue'
import favorite from '@/components/origin/favorite.vue'
import attention from '@/components/origin/attention.vue'
import music from '@/components/origin/music.vue'
export default {
    data(){
        return{}
    },
    components:{
        'my-topC':topC,
        'my-icon-make':icon_make,
        'my-favorite':favorite,
        'my-attention':attention,
        'my-music':music
    }
}
</script>
<style>

</style>
