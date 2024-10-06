<template>
  <el-card>
    <template #header>
      <div class = "card-header">
        <span>租期管理</span>
      </div>
    </template>
    <el-row class = "container">
      <el-col :span = "2" class = "text-center">租期</el-col>
      <el-col :span = "22" class = "item-container">
        <el-popconfirm
            v-for = "item in termTypeList"
            :key = "item.id"
            :title = "`修改或删除${item.monthCount + item.unit}`"
            cancel-button-text = "修改"
            cancel-button-type = "warning"
            confirm-button-text = "删除"
            width = "220"
            @cancel = "editTermHandle(item)"
            @confirm = "deleteTermHandle(item)"
        >
          <template #reference>
            <div class = "item m-r-10 pointer">
              <el-tag style = "padding: 13px">
                {{ item.monthCount + item.unit }}
              </el-tag>
            </div>
          </template>
        </el-popconfirm>
        <el-icon
            :size = "35"
            class = "item m-r-10 m-t-5 pointer"
            color = "#567722"
            @click = "addTermHandle()"
        >
          <CirclePlus/>
        </el-icon>
      </el-col>
    </el-row>
    <!--    租期信息修改弹窗管理-->
    <SupportTermDialog
        ref = "supportTermDialog"
        :updateTerm = "getTermInfoListHandle"
    ></SupportTermDialog>
  </el-card>
</template>
<script lang = "ts" setup>
import {onMounted, ref}              from 'vue'
import {TermInfoInterface}           from '@/api/apartmentManagement/types'
import {deleteTermById, getTermList} from '@/api/apartmentManagement'
import SupportTermDialog
                                     from '@/views/apartmentManagement/attributeManagement/components/SupportTermDialog.vue'
import {ElMessage}                   from 'element-plus'

const supportTermDialog = ref<InstanceType<typeof SupportTermDialog>>()
// 租期类型
const termTypeList = ref<TermInfoInterface[]>([])

// 获取租期信息
async function getTermInfoListHandle() {
  try {
    const {data} = await getTermList()
    termTypeList.value = data
  } catch (error) {
    console.log(error)
  }
}

// 删除租期
const deleteTermHandle = async (item: TermInfoInterface) => {
  console.log('删除租期', item)
  try {
    await deleteTermById(item.id)
    await getTermInfoListHandle()
    ElMessage.success('操作成功')
  } catch (error) {
    console.log(error)
  }
}
// 编辑租期
const editTermHandle = (item: TermInfoInterface) => {
  console.log('编辑租期', item)
  supportTermDialog.value?.show(item)
}
// 添加租期
const addTermHandle = () => {
  console.log('添加租期')
  supportTermDialog.value?.show()
}
onMounted(() => {
  getTermInfoListHandle()
})
</script>

<style lang = "scss" scoped>
.card-header
{
  font-size   : 18px;
  font-weight : bold;
  }

.text-center
{
  align-items     : center;
  display         : flex;
  justify-content : flex-start;
  text-align      : center;
  }

.container:not(:first-child)
{
  margin-top : 20px;
  }

.item-container
{
  align-items      : center;
  background-color : #efefef;
  border-radius    : 20px;
  display          : flex;
  flex-wrap        : wrap;
  justify-content  : flex-start;
  padding          : 10px 15px;
  width            : 100%;

  .item
  {
    align-items     : center;
    display         : flex;
    flex-direction  : column;
    justify-content : center;
    position        : relative;
    }
  }
</style>
