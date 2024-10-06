<template>
  <div class = "error-container">
    <div class = "error-content">
      <el-row :gutter = "20">
        <el-col :lg = "12" :md = "12" :sm = "24" :xl = "12" :xs = "24">
          <div class = "pic-error">
            <img
                alt = "401"
                class = "pic-error-parent"
                src = "@/assets/images/error_images/404.png"
            />
            <img
                alt = "401"
                class = "pic-error-child left"
                src = "@/assets/images/error_images/cloud.png"
            />
            <img
                alt = "401"
                class = "pic-error-child"
                src = "@/assets/images/error_images/cloud.png"
            />
            <img
                alt = "401"
                class = "pic-error-child"
                src = "@/assets/images/error_images/cloud.png"
            />
          </div>
        </el-col>

        <el-col :lg = "12" :md = "12" :sm = "24" :xl = "12" :xs = "24">
          <div class = "bullshit">
            <div class = "bullshit-oops">{{ state.oops }}</div>
            <div class = "bullshit-headline">{{ state.headline }}</div>
            <div class = "bullshit-info">{{ state.info }}</div>
            <a class = "bullshit-return-home" href = "#/index">
              {{ state.jumpTime }}s&nbsp;{{ state.btn }}
            </a>
          </div>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script lang = "ts" setup>
import {onBeforeUnmount, onMounted, reactive} from 'vue'
import {useRouter}                            from 'vue-router'

const router = useRouter()
let state: any = reactive({
                            jumpTime: 5,
                            oops: '抱歉!',
                            headline: '当前页面不存在...',
                            info: '请检查您输入的网址是否正确，或点击下面的按钮返回首页。',
                            btn: '返回首页',
                            timer: 0,
                          })

onMounted(() => {
  timeChange()
})

onBeforeUnmount(() => {
  clearInterval(state.timer)
})

function timeChange() {
  state.timer = setInterval(() => {
    if (state.jumpTime) {
      state.jumpTime--
    } else {
      router.replace({path: '/'})
      clearInterval(state.timer)
    }
  }, 1000)
}
</script>

<style lang = "scss" scoped>
.error-container
{
  left      : 50%;
  position  : absolute;
  top       : 40%;
  transform : translate(-50%, -50%);

  .error-content
  {
    .pic-error
    {
      float    : left;
      overflow : hidden;
      position : relative;
      width    : 120%;

      &-parent
      {
        width : 100%;
        }

      &-child
      {
        position : absolute;

        &.left
        {
          animation-delay           : 1s;
          animation-duration        : 2s;
          animation-fill-mode       : forwards;
          animation-name            : cloud-left;
          animation-timing-function : linear;
          left                      : 220px;
          top                       : 17px;
          width                     : 80px;
          }

        &.mid
        {
          animation-delay           : 1.2s;
          animation-duration        : 2s;
          animation-fill-mode       : forwards;
          animation-name            : cloud-mid;
          animation-timing-function : linear;
          left                      : 420px;
          top                       : 10px;
          width                     : 46px;
          }

        &.right
        {
          animation-delay           : 1s;
          animation-duration        : 2s;
          animation-fill-mode       : forwards;
          animation-name            : cloud-right;
          animation-timing-function : linear;
          left                      : 500px;
          top                       : 100px;
          width                     : 62px;
          }

        @keyframes cloud-left
        {
          0%
          {
            top     : 17px;
            left    : 220px;
            opacity : 0;
            }

          20%
          {
            top     : 33px;
            left    : 188px;
            opacity : 1;
            }

          80%
          {
            top     : 81px;
            left    : 92px;
            opacity : 1;
            }

          100%
          {
            top     : 97px;
            left    : 60px;
            opacity : 0;
            }
          }

        @keyframes cloud-mid
        {
          0%
          {
            top     : 10px;
            left    : 420px;
            opacity : 0;
            }

          20%
          {
            top     : 40px;
            left    : 360px;
            opacity : 1;
            }

          70%
          {
            top     : 130px;
            left    : 180px;
            opacity : 1;
            }

          100%
          {
            top     : 160px;
            left    : 120px;
            opacity : 0;
            }
          }

        @keyframes cloud-right
        {
          0%
          {
            top     : 100px;
            left    : 500px;
            opacity : 0;
            }

          20%
          {
            top     : 120px;
            left    : 460px;
            opacity : 1;
            }

          80%
          {
            top     : 180px;
            left    : 340px;
            opacity : 1;
            }

          100%
          {
            top     : 200px;
            left    : 300px;
            opacity : 0;
            }
          }
        }
      }

    .bullshit
    {
      float    : left;
      overflow : hidden;
      padding  : 30px 0;
      position : relative;
      width    : 300px;

      &-oops
      {
        animation-duration  : 0.5s;
        animation-fill-mode : forwards;
        animation-name      : slideUp;
        color               : $base-color-blue;
        font-size           : 32px;
        font-weight         : bold;
        line-height         : 40px;
        margin-bottom       : 20px;
        }

      &-headline
      {
        animation-delay     : 0.1s;
        animation-duration  : 0.5s;
        animation-fill-mode : forwards;
        animation-name      : slide-up;
        color               : #222222;
        font-size           : 20px;
        font-weight         : bold;
        line-height         : 24px;
        margin-bottom       : 10px;
        opacity             : 0;
        }

      &-info
      {
        animation-delay     : 0.2s;
        animation-duration  : 0.5s;
        animation-fill-mode : forwards;
        animation-name      : slide-up;
        color               : $base-color-gray;
        font-size           : 13px;
        line-height         : 21px;
        margin-bottom       : 30px;
        }

      &-return-home
      {
        animation-delay     : 0.3s;
        animation-duration  : 0.5s;
        animation-fill-mode : forwards;
        animation-name      : slideUp;
        background          : $base-color-blue;
        border-radius       : 100px;
        color               : #ffffff;
        cursor              : pointer;
        display             : block;
        float               : left;
        font-size           : 14px;
        height              : 36px;
        line-height         : 36px;
        text-align          : center;
        width               : 110px;
        }

      @keyframes slide-up
      {
        0%
        {
          opacity   : 0;
          transform : translateY(60px);
          }

        100%
        {
          opacity   : 1;
          transform : translateY(0);
          }
        }
      }
    }
  }
</style>
