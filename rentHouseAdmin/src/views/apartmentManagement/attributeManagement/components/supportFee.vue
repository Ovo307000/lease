<template>
  <el-card>
    <template #header>
      <div class = "card-header">
        <span>杂费信息管理</span>
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
            @cancel = "editFeeKeyHandle(item)"
            @confirm = "deleteFeeKeyHandle(item)"
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
            v-for = "item2 in item.feeValueList || []"
            :key = "item2.id"
            :title = "`修改或删除${item2.name}`"
            cancel-button-text = "修改"
            cancel-button-type = "warning"
            confirm-button-text = "删除"
            width = "220"
            @cancel = "editFeeValueHandle(item2)"
            @confirm = "deleteFeeValueHandle(item2)"
        >
          <template #reference>
            <div class = "item m-r-10 pointer">
              <el-tag style = "padding: 13px">
                {{ item2.name + item2.unit }}
              </el-tag>
            </div>
          </template>
        </el-popconfirm>
        <el-icon
            :size = "35"
            class = "item m-r-10 m-t-5 pointer"
            color = "#567722"
            @click = "addFeeValueHandle(item)"
        >
          <CirclePlus/>
        </el-icon>
      </el-col>
    </el-row>
    <el-button class = "m-t-20" type = "primary" @click = "addFeeKeyHandle">
      添加新属性
    </el-button>
    <!--    信息修改弹窗管理-->
    <SupportFeeDialog
        ref = "supportFeeDialog"
        :updateFee = "getFeeInfoListHandle"
    ></SupportFeeDialog>
    <!--    属性信息弹窗管理-->
    <supportFeeAddOrEditAttrDialog
        ref = "supportFeeAddOrEditFeeDialog"
        :updateFeeAddOrEditFee = "getFeeInfoListHandle"
    ></supportFeeAddOrEditAttrDialog>
  </el-card>
</template>
<script lang = "ts" setup>
import {onMounted, ref}                                        from 'vue'
import {FeeInfoInterface, FeeValueInfoInterface,}              from '@/api/apartmentManagement/types'
import {deleteFeeKeyById, deleteFeeValueById, getFeeInfoList,} from '@/api/apartmentManagement'
import SupportFeeDialog
                                                               from '@/views/apartmentManagement/attributeManagement/components/supportFeeDialog.vue'
import {ElMessage}                                             from 'element-plus'
import SupportFeeAddOrEditAttrDialog
                                                               from '@/views/apartmentManagement/attributeManagement/components/supportFeeAddOrEditAttrDialog.vue'

const supportFeeDialog = ref<InstanceType<typeof SupportFeeDialog>>()
const supportFeeAddOrEditFeeDialog =
          ref<InstanceType<typeof SupportFeeAddOrEditAttrDialog>>()

// 属性类型
const attrTypeList = ref<FeeInfoInterface[]>([])

// 获取属性信息
async function getFeeInfoListHandle() {
  try {
    const {data} = await getFeeInfoList()
    data.forEach((item) => {
      item.feeValueList?.forEach((item2) => {
        item2.feeKeyName = item.name
      })
    })
    attrTypeList.value = data
  } catch (error) {
    console.log(error)
  }
}

// 删除属性值
const deleteFeeValueHandle = async (item: FeeValueInfoInterface) => {
  console.log('删除', item)
  try {
    await deleteFeeValueById(item.id)
    await getFeeInfoListHandle()
    ElMessage.success('操作成功')
  } catch (error) {
    console.log(error)
  }
}
// 编辑属性值
const editFeeValueHandle = (item: FeeValueInfoInterface) => {
  console.log('编辑', item)
  supportFeeDialog.value?.show(item)
}
// 添加属性值
const addFeeValueHandle = (item: FeeInfoInterface) => {
  console.log('添加属性', item)
  supportFeeDialog.value?.show({
                                 feeKeyId: item.id,
                                 feeKeyName: item.name,
                               })
}
// 添加新属性
const addFeeKeyHandle = () => {
  supportFeeAddOrEditFeeDialog.value?.show()
}
// 删除属性
const deleteFeeKeyHandle = async (item: FeeInfoInterface) => {
  console.log('删除', item)
  try {
    await deleteFeeKeyById(item.id)
    await getFeeInfoListHandle()
    ElMessage.success('操作成功')
  } catch (error) {
    console.log(error)
  }
}
const editFeeKeyHandle = (item: FeeInfoInterface) => {
  console.log('编辑', item)
  supportFeeAddOrEditFeeDialog.value?.show(item)
}
onMounted(() => {
  getFeeInfoListHandle()
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
