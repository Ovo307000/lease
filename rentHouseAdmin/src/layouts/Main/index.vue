<template>
  <section class = "app-mian-height">
    <router-view v-if = "isShow" :key = "key" v-slot = "{ Component, route }">
      <transition appear mode = "out-in" name = "fade-transform">
        <component :is = "Component" :key = "route.path"/>
      </transition>
    </router-view>
  </section>
</template>

<script lang = "ts">
import {computed, defineComponent, nextTick, ref, watch} from 'vue'
import {useSettingsStore}                                from '@/store/modules/settings'
import {useRoute}                                        from 'vue-router'

export default defineComponent({
                                 setup() {
                                   const settingsStore = useSettingsStore()
                                   const isShow = ref(true)
                                   const route = useRoute()
                                   const key = computed(() => {
                                     return route.path + Math.random()
                                   })
                                   watch(
                                       () => settingsStore.refresh,
                                       () => {
                                         isShow.value = false
                                         nextTick(() => {
                                           isShow.value = true
                                         })
                                       },
                                   )
                                   return {
                                     isShow,
                                     key
                                   }
                                 },
                               })
</script>

<style lang = "scss" scoped>
.app-mian-height
{
  background-color : inherit;

  // padding: 20px;
  min-height : $base-app-main-height;
  }
</style>
