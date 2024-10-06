<template>
  <el-card>
    <template #header>
      <div class = "card-header">
        <span>房间基本信息管理</span>
      </div>
    </template>
    <el-row v-for = "item in attrTypeList" :key = "item" class = "container">
      <el-col :span = "2" class = "text-center">
        <el-popconfirm
            :title = "`修改或删除${item.name}`"
            cancel-button-text = "修改"
            cancel-button-type = "warning"
            confirm-button-text = "删除"
            width = "220"
            @cancel = "editAttrHandle(item)"
            @confirm = "deleteAttrHandle(item)"
        >
          <template #reference>
            <div class = "item m-r-10 pointer">
              <span>{{ item.name }}</span>
              <el-tooltip
                  content = "点击属性名可进行修改/删除操作"
                  effect = "dark"
                  placement = "top-start"
              >
                <el-icon class = "m-l-5">
                  <InfoFilled/>
                </el-icon>
              </el-tooltip>
            </div>
          </template>
        </el-popconfirm>
      </el-col>
      <el-col :span = "22" class = "item-container">
        <el-popconfirm
            v-for = "item2 in item.attrValueList || []"
            :key = "item2.id"
            :title = "`修改或删除${item2.name}`"
            cancel-button-text = "修改"
            cancel-button-type = "warning"
            confirm-button-text = "删除"
            width = "220"
            @cancel = "editRoomBaseHandle(item2)"
            @confirm = "deleteRoomBaseHandle(item2)"
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
            @click = "addRoomBaseHandle(item)"
        >
          <CirclePlus/>
        </el-icon>
      </el-col>
    </el-row>
    <el-button
        class = "m-t-20"
        type = "primary"
        @click = "addAttrHandle"
    >
      添加新属性
    </el-button>
    <!--    信息修改弹窗管理-->
    <SupportRoomBaseDialog
        ref = "supportRoomBaseDialog"
        :updateRoomBase = "getRoomBaseInfoListHandle"
    ></SupportRoomBaseDialog>
    <!--    属性信息弹窗管理-->
    <supportRoomBaseAddOrEditAttrDialog
        ref = "supportRoomBaseAddOrEditAttrDialog"
        :updateRoomBaseAddOrEditAttr = "getRoomBaseInfoListHandle"
    ></supportRoomBaseAddOrEditAttrDialog>
  </el-card>
</template>
<script lang = "ts" setup>
import {onMounted, ref}                                           from 'vue'
import {AttrInfoInfoInterface, AttrValueInfoInterface,}           from '@/api/apartmentManagement/types'
import {deleteAttrKeyById, deleteAttrValueById, getAttrInfoList,} from '@/api/apartmentManagement'
import SupportRoomBaseDialog
                                                                  from '@/views/apartmentManagement/attributeManagement/components/supportRoomBaseDialog.vue'
import {ElMessage}                                                from 'element-plus'
import SupportRoomBaseAddOrEditAttrDialog
                                                                  from '@/views/apartmentManagement/attributeManagement/components/supportRoomBaseAddOrEditAttrDialog.vue'

const supportRoomBaseDialog = ref<InstanceType<typeof SupportRoomBaseDialog>>()
const supportRoomBaseAddOrEditAttrDialog =
          ref<InstanceType<typeof SupportRoomBaseAddOrEditAttrDialog>>()

// 属性类型
const attrTypeList = ref<AttrInfoInfoInterface[]>([])

// 获取属性信息
async function getRoomBaseInfoListHandle() {
  try {
    const {data} = await getAttrInfoList()
    data.forEach((item) => {
      item.attrValueList?.forEach((item2) => {
        item2.attrKeyName = item.name
      })
    })
    attrTypeList.value = data
  } catch (error) {
    console.log(error)
  }
}

// 删除属性值
const deleteRoomBaseHandle = async (item: AttrValueInfoInterface) => {
  console.log('删除', item)
  try {
    await deleteAttrValueById(item.id)
    await getRoomBaseInfoListHandle()
    ElMessage.success('操作成功')
  } catch (error) {
    console.log(error)
  }
}
// 编辑属性值
const editRoomBaseHandle = (item: AttrValueInfoInterface) => {
  console.log('编辑', item)
  supportRoomBaseDialog.value?.show(item)
}
// 添加属性值
const addRoomBaseHandle = (item: AttrInfoInfoInterface) => {
  console.log('添加属性', item)
  supportRoomBaseDialog.value?.show({
                                      attrKeyId: item.id,
                                      attrKeyName: item.name,
                                    })
}
// 添加新属性
const addAttrHandle = () => {
  supportRoomBaseAddOrEditAttrDialog.value?.show()
}
// 删除属性
const deleteAttrHandle = async (item: AttrInfoInfoInterface) => {
  console.log('删除', item)
  try {
    await deleteAttrKeyById(item.id)
    await getRoomBaseInfoListHandle()
    ElMessage.success('操作成功')
  } catch (error) {
    console.log(error)
  }
}
const editAttrHandle = (item: AttrInfoInfoInterface) => {
  console.log('编辑', item)
  supportRoomBaseAddOrEditAttrDialog.value?.show(item)
}
onMounted(() => {
  getRoomBaseInfoListHandle()
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
