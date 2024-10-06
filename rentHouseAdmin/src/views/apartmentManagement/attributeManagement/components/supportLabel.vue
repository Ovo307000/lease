<template>
  <el-card>
    <template #header>
      <div class = "card-header">
        <span>标签信息管理</span>
      </div>
    </template>
    <el-row v-for = "item in labelTypeList" :key = "item" class = "container">
      <el-col :span = "2" class = "text-center">{{ item.label }}标签</el-col>
      <el-col :span = "22" class = "item-container">
        <el-popconfirm
            v-for = "item2 in item.children || []"
            :key = "item2.id"
            :title = "`修改或删除${item2.name}`"
            cancel-button-text = "修改"
            cancel-button-type = "warning"
            confirm-button-text = "删除"
            width = "220"
            @cancel = "editLabelHandle(item2)"
            @confirm = "deleteLabelHandle(item2)"
        >
          <template #reference>
            <div class = "item m-r-10 pointer">
              <el-tag style = "padding: 13px">{{ item2.name }}</el-tag>
            </div>
          </template>
        </el-popconfirm>
        <el-icon
            :size = "35"
            class = "item m-r-10 m-t-5 pointer"
            color = "#567722"
            @click = "addLabelHandle(item)"
        >
          <CirclePlus/>
        </el-icon>
      </el-col>
    </el-row>
    <!--    标签信息修改弹窗管理-->
    <SupportLabelDialog
        ref = "supportLabelDialog"
        :updateLabel = "getLabelInfoListHandle"
    ></SupportLabelDialog>
  </el-card>
</template>
<script lang = "ts" setup>
import {onMounted, ref}                         from 'vue'
import {LabelInfoInterface}                     from '@/api/apartmentManagement/types'
import {deleteLabelInfoById, getLabelInfoList,} from '@/api/apartmentManagement'
import {BuildingTypeTypeMap}                    from '@/enums/constEnums'
import SupportLabelDialog
                                                from '@/views/apartmentManagement/attributeManagement/components/supportLabelDialog.vue'
import {ElMessage}                              from 'element-plus'

type SupportLabelInterface = {
  label: string
  value: string
  children?: LabelInfoInterface[]
}
const supportLabelDialog = ref<InstanceType<typeof SupportLabelDialog>>()
// 标签类型
const labelTypeList = ref<SupportLabelInterface[]>([])

// 获取标签信息
async function getLabelInfoListHandle() {
  try {
    const {data} = await getLabelInfoList()
    labelTypeList.value = JSON.parse(JSON.stringify(BuildingTypeTypeMap))
    data.forEach((item) => {
      // 获取对应类型的名称
      const targetType = labelTypeList.value.find(
          (item2) => item2.value === item.type,
      )
      if (targetType) {
        targetType.children = targetType.children || []
        targetType.children.push(item)
      }
    })
  } catch (error) {
    console.log(error)
  }
}

// 删除标签
const deleteLabelHandle = async (item: LabelInfoInterface) => {
  console.log('删除标签', item)
  try {
    await deleteLabelInfoById(item.id)
    await getLabelInfoListHandle()
    ElMessage.success('操作成功')
  } catch (error) {
    console.log(error)
  }
}
// 编辑标签
const editLabelHandle = (item: LabelInfoInterface) => {
  console.log('编辑标签', item)
  supportLabelDialog.value?.show(item)
}
// 添加标签
const addLabelHandle = (item: SupportLabelInterface) => {
  console.log('添加标签', item)
  supportLabelDialog.value?.show({type: item.value})
}
onMounted(() => {
  getLabelInfoListHandle()
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
