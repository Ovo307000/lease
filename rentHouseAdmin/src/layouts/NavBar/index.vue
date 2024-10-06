<!--
 * @Description: 
 * @Autor: 李海波
 * @Date: 2023-03-03 13:41:05
 * @LastEditors: 1547702880@@qq.com
 * @LastEditTime: 2023-03-15 17:20:10
-->
<template>
  <div class = "nav-bar-container">
    <el-row :gutter = "15">
      <el-col :lg = "12" :md = "12" :sm = "12" :xl = "12">
        <div class = "left-panel">
          <el-icon class = "fold-unfold" @click = "handleCollapse">
            <component :is = "collapse ? 'Expand' : 'Fold'"></component>
          </el-icon>
          <Breadcrumb/>
        </div>
      </el-col>
      <el-col :lg = "12" :md = "12" :sm = "12" :xl = "12">
        <div class = "right-panel">
          <Refresh/>
          <ScreenFull/>
          <Settings/>
          <User/>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script lang = "ts">
import {defineComponent, computed} from 'vue'
import {useSettingsStore}          from '@/store/modules/settings'
import User                        from './components/User/index.vue'
import Breadcrumb                  from './components/Breadcrumb/index.vue'
import Refresh                     from './components/Refresh/index.vue'
import ScreenFull                  from './components/ScreeFull/index.vue'
import Settings                    from './components/Settings/index.vue'

export default defineComponent({
                                 components: {
                                   Refresh,
                                   User,
                                   ScreenFull,
                                   Breadcrumb,
                                   Settings,
                                 },
                                 setup() {
                                   const settingsStore = useSettingsStore()

                                   const collapse = computed(() => settingsStore.collapse)

                                   function handleCollapse() {
                                     settingsStore.changeCollapse()
                                   }

                                   return {
                                     collapse,
                                     handleCollapse,
                                   }
                                 },
                               })
</script>

<style lang = "scss" scoped>
.nav-bar-container
{
  background    : $base-color-white;
  box-shadow    : $base-box-shadow;
  height        : $base-nav-bar-height;
  overflow      : hidden;
  padding-left  : $base-padding;
  padding-right : $base-padding;
  position      : relative;
  user-select   : none;

  .left-panel
  {
    align-items   : center;
    display       : flex;
    height        : 60px;
    justify-items : center;

    .fold-unfold
    {
      color     : $base-color-gray;
      cursor    : pointer;
      font-size : 18px;
      }
    }

  .right-panel
  {
    align-content   : center;
    align-items     : center;
    display         : flex;
    height          : $base-nav-bar-height;
    justify-content : flex-end;
    }
  }
</style>
