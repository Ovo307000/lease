<template>
  <el-switch
      v-model = "themeConfig.isDark"
      :active-icon = "Sunny"
      :inactive-icon = "Moon"
      inline-prompt
      @change = "onAddDarkChange"
  />
</template>

<script lang = "ts" name = "SwitchDark" setup>
import {computed}         from 'vue'
import {useSettingsStore} from '@/store/modules/settings'
import {Sunny, Moon}      from '@element-plus/icons-vue'
import {useTheme}         from '@/hooks/useTheme'

const settingsStore = useSettingsStore()

const {switchDark} = useTheme()

const themeConfig = computed(() => settingsStore.themeConfig)

const onAddDarkChange = () => {
  switchDark()
}
</script>
