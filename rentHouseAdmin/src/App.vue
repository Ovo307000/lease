<template>
  <router-view></router-view>
</template>

<script lang = "ts" setup>
import {useTheme} from './hooks/useTheme'
// 初始化主题配置
const {initTheme} = useTheme()
initTheme()
</script>
