<!--
 * @Description: 
 * @Autor: 李海波
 * @Date: 2023-03-03 13:39:38
 * @LastEditors: 1547702880@@qq.com
 * @LastEditTime: 2023-03-17 11:41:48
-->
<template>
  <div class = "m-screenful">
    <el-tooltip
        :content = "!isFullscreen ? '全屏' : '收起'"
        effect = "dark"
        placement = "bottom"
    >
      <el-button circle @click = "toggle">
        <IconifyIcon
            v-if = "!isFullscreen"
            height = "16"
            icon = "fluent:full-screen-maximize-24-filled"
        />
        <IconifyIcon
            v-else
            height = "18"
            icon = "fluent:full-screen-minimize-24-filled"
        />
      </el-button>
    </el-tooltip>
  </div>
</template>

<script lang = "ts">
import {useFullscreen} from '@vueuse/core'
import {defineComponent} from 'vue'

export default defineComponent({
                                 setup() {
                                   const {
                                           toggle,
                                           isFullscreen
                                         } = useFullscreen()
                                   return {
                                     toggle,
                                     isFullscreen,
                                   }
                                 },
                               })
</script>

<style lang = "scss" scoped>
.m-screenful
{
  cursor        : pointer;
  padding-right : 20px;
  transition    : all 0.3s;
  }
</style>
