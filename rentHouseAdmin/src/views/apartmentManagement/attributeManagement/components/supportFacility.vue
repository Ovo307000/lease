<template>
  <el-card>
    <template #header>
      <div class = "card-header">
        <span>配套信息管理</span>
      </div>
    </template>
    <el-row v-for = "item in facilityTypeList" :key = "item" class = "container">
      <el-col :span = "2" class = "text-center">{{ item.label }}配套</el-col>
      <el-col :span = "22" class = "item-container">
        <el-popconfirm
            v-for = "item2 in item.children || []"
            :key = "item2.id"
            :title = "`修改或删除${item2.name}`"
            cancel-button-text = "修改"
            cancel-button-type = "warning"
            confirm-button-text = "删除"
            width = "220"
            @cancel = "editFacilityHandle(item2)"
            @confirm = "deleteFacilityHandle(item2)"
        >
          <template #reference>
            <div class = "item m-r-10 m-t-10 pointer">
              <SvgIcon :name = "`rent-${item2.icon}`" color = "black" size = "25"/>
              <span>{{ item2.name }}</span>
            </div>
          </template>
        </el-popconfirm>
        <el-icon
            :size = "35"
            class = "item m-r-10 m-t-5 pointer"
            color = "#567722"
            @click = "addFacilityHandle(item)"
        >
          <CirclePlus/>
        </el-icon>
      </el-col>
    </el-row>
    <!--    配套信息修改弹窗管理-->
    <SupportFacilityDialog
        ref = "supportFacilityDialog"
        :updateFacility = "getFacilityInfoListHandle"
    ></SupportFacilityDialog>
  </el-card>
</template>
<script lang = "ts" setup>
import {onMounted, ref}                               from 'vue'
import {FacilityInfoInterface}                        from '@/api/apartmentManagement/types'
import {deleteFacilityInfoById, getFacilityInfoList,} from '@/api/apartmentManagement'
import {BuildingTypeTypeMap}                          from '@/enums/constEnums'
import SupportFacilityDialog
                                                      from '@/views/apartmentManagement/attributeManagement/components/supportFacilityDialog.vue'
import {ElMessage}                                    from 'element-plus'

type SupportFacilityInterface = {
  label: string
  value: string
  children?: FacilityInfoInterface[]
}
const supportFacilityDialog = ref<InstanceType<typeof SupportFacilityDialog>>()
// 配套类型
const facilityTypeList = ref<SupportFacilityInterface[]>([])

// 获取配套信息
async function getFacilityInfoListHandle() {
  try {
    const {data} = await getFacilityInfoList()
    facilityTypeList.value = JSON.parse(JSON.stringify(BuildingTypeTypeMap))
    data.forEach((item) => {
      // 获取对应类型的名称
      const targetType = facilityTypeList.value.find(
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

// 删除配套
const deleteFacilityHandle = async (item: FacilityInfoInterface) => {
  console.log('删除配套', item)
  try {
    await deleteFacilityInfoById(item.id)
    await getFacilityInfoListHandle()
    ElMessage.success('操作成功')
  } catch (error) {
    console.log(error)
  }
}
// 编辑配套
const editFacilityHandle = (item: FacilityInfoInterface) => {
  console.log('编辑配套', item)
  supportFacilityDialog.value?.show(item)
}
// 添加配套
const addFacilityHandle = (item: SupportFacilityInterface) => {
  console.log('添加配套', item)
  supportFacilityDialog.value?.show({type: item.value})
}
onMounted(() => {
  getFacilityInfoListHandle()
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
    width           : 50px;
    }
  }
</style>
