<template>
  <el-upload
      :action = "UPLOAD_IMG_URL"
      :headers = "{ 'access-token': useUserStore().token }"
      :on-preview = "handlePictureCardPreview"
      v-bind = "$attrs"
  >
    <el-icon>
      <Plus/>
    </el-icon>
  </el-upload>

  <el-dialog v-model = "dialogVisible">
    <el-image :src = "dialogImageUrl" fit = "fill"/>
  </el-dialog>
</template>
<script lang = "ts" setup>
import {UPLOAD_IMG_URL} from '@/api/upload'
import {ref}            from 'vue'
import {UploadFile}     from 'element-plus/es/components/upload/src/upload'
import {useUserStore}   from '@/store/modules/user'

const dialogImageUrl = ref('')
const dialogVisible = ref(false)

function handlePictureCardPreview(uploadFile: UploadFile) {
  dialogImageUrl.value = uploadFile.url!
  dialogVisible.value = true
}
</script>

<style lang = "scss" scoped></style>
