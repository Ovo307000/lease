<!--
 * @Description: 
 * @Autor: 李海波
 * @Date: 2023-03-03 13:41:05
 * @LastEditors: 1547702880@@qq.com
 * @LastEditTime: 2023-03-17 11:40:25
-->
<template>
  <div class = "btn">
    <el-tooltip content = "刷新">
      <el-button circle @click = "onRefresh">
        <IconifyIcon height = "16" icon = "ri:refresh-line"/>
      </el-button>
    </el-tooltip>
  </div>
</template>

<script lang = "ts">
import {defineComponent}  from 'vue'
import {useSettingsStore} from '@/store/modules/settings'
import {IconifyIcon}      from '@/components/IconifyIcon'

export default defineComponent({
                                 components: {
                                   IconifyIcon,
                                 },
                                 setup() {
                                   const settingsStore = useSettingsStore()
                                   const onRefresh = () => {
                                     settingsStore.setRefresh()
                                   }
                                   return {onRefresh}
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
