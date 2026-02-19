<script setup lang="ts">
import { computed } from 'vue'

const props = defineProps<{
  data: {
    id: string
    x: number
    y: number
    title: string
    message: string
    wait: number
  }
}>()

const style = computed(() => ({
  position: 'absolute' as const,
  left: `${props.data.x * 100}%`,
  top: `${props.data.y * 100}%`,
}))

const progressWidth = computed(() => `${100 - props.data.wait}%`)
</script>

<template>
  <div class="speech-bubble" :style="style">
    <div class="bubble-progress" :style="{ width: progressWidth }" />
    <h4 class="bubble-author">{{ data.title }}</h4>
    <p class="bubble-message">{{ data.message }}</p>
  </div>
</template>

<style scoped>
.speech-bubble {
  position: absolute;
  font-family: 'Inter', sans-serif;
  width: 280px;
  background: rgba(35, 47, 90, 0.95);
  padding: 12px 14px;
  color: #fff;
  border-top: 4px solid #abbad5;
  border-radius: 4px;
  line-height: 1.4;
  z-index: 50;
  pointer-events: none;
}

.speech-bubble::after {
  content: '';
  position: absolute;
  bottom: -10px;
  left: 0;
  border-top: 0 solid transparent;
  border-bottom: 10px solid transparent;
  border-left: 16px solid rgba(35, 47, 90, 0.95);
}

.bubble-progress {
  position: absolute;
  top: -4px;
  left: 0;
  height: 4px;
  background: #c76d6d;
  transition: width 0.3s linear;
}

.bubble-author {
  font-size: 13px;
  font-weight: 700;
  margin-bottom: 4px;
  color: #e0e8f4;
}

.bubble-message {
  font-size: 12px;
  color: rgba(255, 255, 255, 0.8);
}
</style>
