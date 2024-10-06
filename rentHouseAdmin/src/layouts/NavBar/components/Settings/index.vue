<!--
 * @Description: 
 * @Autor: 李海波
 * @Date: 2023-03-03 13:41:05
 * @LastEditors: 1547702880@@qq.com
 * @LastEditTime: 2023-03-17 11:42:52
-->
<template>
  <div class = "btn">
    <el-tooltip content = "系统设置" effect = "dark">
      <el-button circle @click = "onSetting">
        <IconifyIcon height = "16" icon = "ep:setting"/>
      </el-button>
    </el-tooltip>
  </div>
</template>

<script lang = "ts">
import {defineComponent} from 'vue'
import mittBus           from '@/utils/mittBus'

export default defineComponent({
                                 setup() {
                                   const onSetting = () => {
                                     // 采用事件监听的方式打开ThemeDrawer
                                     mittBus.emit('openThemeDrawer')
                                   }
                                   return {onSetting}
                                 },
                               })
</script>

<style lang = "scss" scoped>
.btn
{
  cursor       : pointer;
  margin-right : 20px;
  transition   : all 0.3s;
  }
</style>
