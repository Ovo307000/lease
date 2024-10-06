<template>
  <el-card>
    <template #header>
      <div class = "card-header">
        <span>支付方式管理</span>
      </div>
    </template>
    <el-row class = "container">
      <el-col :span = "2" class = "text-center">支付方式</el-col>
      <el-col :span = "22" class = "item-container">
        <el-popconfirm
            v-for = "item in paymentTypeList"
            :key = "item.id"
            :title = "`修改或删除${item.name}(${item.additionalInfo})`"
            cancel-button-text = "修改"
            cancel-button-type = "warning"
            confirm-button-text = "删除"
            width = "220"
            @cancel = "editHandle(item)"
            @confirm = "deleteHandle(item)"
        >
          <template #reference>
            <div class = "item m-r-10 pointer">
              <el-tag style = "padding: 13px">
                {{ `${item.name}(${item.additionalInfo})` }}
              </el-tag>
            </div>
          </template>
        </el-popconfirm>
        <el-icon
            :size = "35"
            class = "item m-r-10 m-t-5 pointer"
            color = "#567722"
            @click = "addHandle()"
        >
          <CirclePlus/>
        </el-icon>
      </el-col>
    </el-row>
    <!--    支付方式信息修改弹窗管理-->
    <SupportPaymentDialog
        ref = "supportPaymentDialog"
        :update = "getPaymentInfoListHandle"
    ></SupportPaymentDialog>
  </el-card>
</template>
<script lang = "ts" setup>
import {onMounted, ref}                    from 'vue'
import {PaymentInfoInterface}              from '@/api/apartmentManagement/types'
import {deletePaymentById, getPaymentList} from '@/api/apartmentManagement'
import SupportPaymentDialog
                                           from '@/views/apartmentManagement/attributeManagement/components/SupportPaymentDialog.vue'
import {ElMessage}                         from 'element-plus'

const supportPaymentDialog = ref<InstanceType<typeof SupportPaymentDialog>>()
// 支付方式类型
const paymentTypeList = ref<PaymentInfoInterface[]>([])

// 获取支付方式信息
async function getPaymentInfoListHandle() {
  try {
    const {data} = await getPaymentList()
    paymentTypeList.value = data
  } catch (error) {
    console.log(error)
  }
}

// 删除支付方式
const deleteHandle = async (item: PaymentInfoInterface) => {
  console.log('删除支付方式', item)
  try {
    await deletePaymentById(item.id)
    await getPaymentInfoListHandle()
    ElMessage.success('操作成功')
  } catch (error) {
    console.log(error)
  }
}
// 编辑支付方式
const editHandle = (item: PaymentInfoInterface) => {
  console.log('编辑支付方式', item)
  supportPaymentDialog.value?.show(item)
}
// 添加支付方式
const addHandle = () => {
  console.log('添加支付方式')
  supportPaymentDialog.value?.show()
}
onMounted(() => {
  getPaymentInfoListHandle()
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
