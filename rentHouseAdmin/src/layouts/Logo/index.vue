<template>
  <div class = "logo-container flex-center">
    <a href = "/">
      <img :src = "logoPng" alt = "logo" class = "logo"/>
      <h1 v-if = "!collapse" class = "title">
        {{ getEnvByName('VITE_APP_TITLE') }}
      </h1>
    </a>
  </div>
</template>

<script lang = "ts">
import {defineComponent, computed, ref} from 'vue'
import {useSettingsStore}               from '@/store/modules/settings'
import {getEnvByName}                   from '@/utils/getEnv'
import logoPngUrl                       from '@/assets/images/logo.png'

export default defineComponent({
                                 methods: {getEnvByName},
                                 setup() {
                                   const settingsStore = useSettingsStore()
                                   const collapse = computed(() => settingsStore.collapse)
                                   const logoPng = ref(logoPngUrl)
                                   return {
                                     logoPng,
                                     collapse
                                   }
                                 },
                               })
</script>

<style lang = "scss" scoped>
.logo-container
{
  background      : transparent;
  display         : flex;
  height          : 60px;

  // padding-left: 24px;
  justify-content : center;
  line-height     : 60px;
  overflow        : hidden;
  position        : relative;

  .title
  {
    color          : #ffffff;
    display        : inline-block;
    font-family    : Avenir, "Helvetica Neue", Arial, Helvetica, sans-serif;
    font-size      : 20px;
    font-weight    : 600;
    margin-left    : 12px;
    vertical-align : middle;
    }

  .logo
  {
    border-radius  : 50%;
    display        : inline-block;
    height         : 32px;
    vertical-align : middle;
    width          : 32px;
    }
  }
</style>
