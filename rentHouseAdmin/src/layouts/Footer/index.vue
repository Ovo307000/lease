<template>
  <div class = "layout-footer-container">
    Copyright
    <svg-icon color = "rgba(0, 0, 0, 0.45)" name = "copyright" size = "16px"/>
    {{ fullYear }}尚硅谷教学
  </div>
</template>

<script lang = "ts">
import {defineComponent, ref} from 'vue'

export default defineComponent({
                                 setup() {
                                   const fullYear = ref(new Date().getFullYear())
                                   return {
                                     fullYear,
                                   }
                                 },
                               })
</script>

<style lang = "scss" scoped>
.layout-footer-container
{
  align-items     : center;
  background      : var(--el-color-white);
  border-top      : 1px dashed #dcdfe6;
  color           : rgb(0 0 0 / 45%);
  display         : flex;
  justify-content : center;
  min-height      : $base-app-footer-height;
  padding         : 0 20px;
  }
</style>
