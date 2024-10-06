<template>
  <i :class="['el-icon', spin && 'svg-icon-spin']" :style="getStyle">
    <svg aria-hidden="true">
      <use :fill="color" :xlink:href="symbolId" />
    </svg>
  </i>
</template>

<script lang="ts" name="SvgIcon" setup>
import { computed } from 'vue'
import type { CSSProperties } from 'vue'
const props = defineProps({
  prefix: {
    type: String,
    default: 'icon',
  },
  name: {
    type: String,
    required: true,
  },
  color: {
    type: String,
    default: '#ffffff',
  },
  size: {
    type: [Number, String],
    default: 20,
  },
  spin: {
    type: Boolean,
    default: false,
  },
})

const symbolId = computed(() => `#${props.prefix}-${props.name}`)
const getStyle = computed((): CSSProperties => {
  const { size } = props
  let s = `${size}`
  s = `${s.replace('px', '')}px`
  return {
    fontSize: s,
  }
})
</script>

<style lang="scss" scoped>
.el-icon {
  --color: inherit;

  align-items: center;
  color: var(--color);
  display: inline-flex;
  fill: currentColor;
  font-size: inherit;
  height: 1em;
  justify-content: center;
  line-height: 1em;
  position: relative;
  width: 1em;

  svg {
    height: 1em;
    width: 1em;
  }
}

.svg-icon-spin {
  animation: circle 1.5s infinite linear;
}

/* 旋转动画 */
@keyframes circle {
  0% {
    transform: rotate(0);
  }

  100% {
    transform: rotate(360deg);
  }
}
</style>
