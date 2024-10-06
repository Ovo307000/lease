<template>
  <!-- 分页组件 -->
  <el-pagination
      :background = "true"
      :current-page = "pageable.pageNum"
      :page-size = "pageable.pageSize"
      :page-sizes = "[10, 25, 50, 100]"
      :total = "pageable.total"
      class = "pagination"
      layout = "total, sizes, prev, pager, next, jumper"
      @size-change = "handleSizeChange"
      @current-change = "handleCurrentChange"
  ></el-pagination>
</template>

<script lang = "ts" name = "Pagination" setup>
interface Pageable {
  pageNum: number
  pageSize: number
  total: number
}

interface PaginationProps {
  pageable: Pageable
  handleSizeChange: (size: number) => void
  handleCurrentChange: (currentPage: number) => void
}

defineProps<PaginationProps>()
</script>

<style lang = "scss">
@import "../style/index";
</style>
