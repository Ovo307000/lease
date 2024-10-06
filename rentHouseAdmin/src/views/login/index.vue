<template>
  <div class = "login-container">
    <el-alert
        v-show = "false"
        :closable = "false"
        :title = "getEnvByName('VITE_APP_TITLE')"
        style = "position: fixed"
        type = "success"
    ></el-alert>
    <el-row>
      <el-col :lg = "14" :md = "12" :sm = "24" :xl = "14" :xs = "24">
        <div style = "color: transparent">左侧区域占位符</div>
      </el-col>
      <el-col :lg = "10" :md = "12" :sm = "24" :xl = "10" :xs = "24">
        <el-form
            ref = "ruleFormRef"
            :model = "ruleForm"
            :rules = "rules"
            class = "login-form"
            status-icon
        >
          <div class = "form-header">
            <div class = "title">hello !</div>
            <div class = "title-tips">
              欢迎来到{{ getEnvByName('VITE_APP_TITLE') }}！
            </div>
          </div>
          <el-form-item prop = "username">
            <el-input
                v-model.trim = "ruleForm.username"
                :prefix-icon = "User"
                autocomplete = "off"
                placeholder = "请输入用户名"
            />
          </el-form-item>
          <el-form-item prop = "password">
            <el-input
                v-model.trim = "ruleForm.password"
                :prefix-icon = "Lock"
                autocomplete = "off"
                placeholder = "请输入密码"
                show-password
                type = "password"
            />
          </el-form-item>
          <el-form-item prop = "captchaCode">
            <el-row>
              <el-col :span = "15">
                <el-input
                    v-model.trim = "ruleForm.captchaCode"
                    autocomplete = "off"
                    placeholder = "请输入验证码"
                />
              </el-col>
              <el-col :offset = "1" :span = "8">
                <el-image
                    :src = "captcha.image"
                    class = "pointer"
                    fit = "contain"
                    style = "height: 100%; background: white"
                    @click = "getCaptcha"
                />
              </el-col>
            </el-row>
          </el-form-item>
          <el-form-item>
            <el-button
                :loading = "loading"
                class = "login-btn"
                size = "large"
                type = "primary"
                @click = "submitForm(ruleFormRef)"
            >
              登陆
            </el-button>
          </el-form-item>
        </el-form>
      </el-col>
    </el-row>
  </div>
</template>

<script lang = "ts" setup>
import {onMounted, reactive, ref}    from 'vue'
import {useRoute, useRouter}         from 'vue-router'
import {useUserStore}                from '@/store/modules/user'
import type {FormInstance}           from 'element-plus'
import {ElNotification}              from 'element-plus'
import {Lock, User}                  from '@element-plus/icons-vue'
import {HOME_URL}                    from '@/config/config'
import {timeFix}                     from '@/utils/index'
import {getCode, getUserInfo, login} from '@/api/user'
import {getEnvByName}                from '@/utils/getEnv'

const router = useRouter()
const route = useRoute()
const ruleFormRef = ref<FormInstance>()
const userStore = useUserStore()
const ruleForm = reactive({
                            username: 'user',
                            password: '123456',
                            captchaKey: '',
                            captchaCode: '',
                          })
const loading = ref(false)
const validateUsername = (rule: any, value: string, callback: any) => {
  if (value === '') {
    callback(new Error('用户名不能为空'))
  } else if (value.length < 4) {
    callback(new Error('用户名长度不能小于4位'))
  } else {
    callback()
  }
}

const validatePassword = (rule: any, value: string, callback: any) => {
  if (value === '') {
    callback(new Error('密码不能为空'))
  } else if (value.length < 6) {
    callback(new Error('密码长度不能小于6位'))
  } else {
    callback()
  }
}
const validateCaptchaCode = (rule: any, value: string, callback: any) => {
  if (value === '') {
    callback(new Error('验证码不能为空'))
  } else {
    callback()
  }
}
const rules = reactive({
                         username: [{
                           required: true,
                           validator: validateUsername
                         }],
                         password: [{
                           required: true,
                           validator: validatePassword
                         }],
                         captchaCode: [{
                           required: true,
                           validator: validateCaptchaCode
                         }],
                       })
// 验证码数据
const captcha = ref({
                      image: '',
                      key: '',
                    })
// 获取验证码
const getCaptcha = async () => {
  try {
    const {data} = await getCode()
    captcha.value = data
    ruleForm.captchaKey = data.key
  } catch (error) {
    console.log(error)
  }
}
const submitForm = (formEl: FormInstance | undefined) => {
  if (!formEl) return
  formEl.validate(async (valid) => {
    if (!valid) return
    try {
      loading.value = true
      const {data} = await login(ruleForm)
      userStore.setToken(data)
      router.replace((route.query.redirect as string) || HOME_URL)

      const userInfo = await getUserInfo()
      userStore.setUserInfo(userInfo.data)

      ElNotification({
                       title: `hi,${timeFix()}!`,
                       message: `欢迎回来`,
                       type: 'success',
                     })
    } finally {
      loading.value = false
    }
  })
}
onMounted(() => {
  getCaptcha()
})
</script>

<style lang = "scss" scoped>
@import "./index";
</style>
