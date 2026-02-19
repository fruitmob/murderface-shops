<script setup lang="ts">
import { ref, computed } from 'vue'
import { useShopStore } from '../stores/shop'
import { nuiCallback } from '../utils/callback'
import { VEHICLE_COLORS } from '../utils/constants'

const shop = useShopStore()

const activeColor = ref(3)
const liveryIndex = ref(-1)
const liveryName = ref('Default')

const liveries = computed(() => {
  return shop.vehicleViewData?.livery || {}
})

const liveryCount = computed(() => {
  return Object.keys(liveries.value).length
})

function selectColor(colorId: number) {
  activeColor.value = colorId
  nuiCallback('changeColor', { color: colorId })
}

function changeLivery(delta: number) {
  const keys = Object.keys(liveries.value).map(Number).sort((a, b) => a - b)
  if (keys.length === 0) return

  const newIndex = liveryIndex.value + delta
  if (newIndex < -1 || newIndex >= keys.length) return

  liveryIndex.value = newIndex
  liveryName.value = newIndex === -1 ? 'Default' : (liveries.value[newIndex] || `Livery ${newIndex + 1}`)
  nuiCallback('changeLivery', { livery: newIndex })
}

function testDrive() {
  if (!shop.currentVehicle) return
  nuiCallback('testDrive', {
    vehicle: {
      model: shop.currentVehicle,
      liveries: liveryIndex.value,
      colorid: activeColor.value,
    },
  })
}
</script>

<template>
  <div class="vehicle-preview">
    <!-- This area is transparent so the GTA camera renders behind it -->
    <div class="preview-viewport" />

    <div class="preview-controls">
      <div class="color-picker">
        <div
          v-for="color in VEHICLE_COLORS"
          :key="color.id"
          class="color-swatch"
          :class="{ active: activeColor === color.id }"
          :style="{ backgroundColor: color.css }"
          :title="color.label"
          @click="selectColor(color.id)"
        />
      </div>

      <div class="control-row">
        <button class="ctrl-btn test-drive" @click="testDrive">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
            <path d="M5 17h2l2-7h6l2 7h2"/>
            <circle cx="7.5" cy="17.5" r="2.5"/><circle cx="16.5" cy="17.5" r="2.5"/>
          </svg>
          Test Drive
        </button>

        <div class="livery-control" v-if="liveryCount > 1">
          <button class="livery-btn" @click="changeLivery(-1)">-</button>
          <span class="livery-label">{{ liveryName }}</span>
          <button class="livery-btn" @click="changeLivery(1)">+</button>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.vehicle-preview {
  flex: 1;
  display: flex;
  flex-direction: column;
  position: relative;
  min-height: 0;
}

.preview-viewport {
  flex: 1;
  /* Transparent so GTA render camera shows through */
}

.preview-controls {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  display: flex;
  flex-direction: column;
  gap: 10px;
  padding: 16px;
  background: linear-gradient(to top, rgba(14, 16, 18, 0.85) 0%, transparent 100%);
}

.color-picker {
  display: flex;
  gap: 8px;
  justify-content: center;
  flex-wrap: wrap;
}

.color-swatch {
  width: 28px;
  height: 28px;
  border-radius: 50%;
  border: 2px solid rgba(255, 255, 255, 0.3);
  cursor: pointer;
  transition: all 0.2s;
  box-shadow: 0 0 4px rgba(0, 0, 0, 0.3);
}
.color-swatch:hover {
  transform: scale(1.15);
  border-color: rgba(255, 255, 255, 0.6);
}
.color-swatch.active {
  border-color: #fff;
  box-shadow: 0 0 8px rgba(255, 255, 255, 0.4);
}

.control-row {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 12px;
}

.ctrl-btn {
  display: flex;
  align-items: center;
  gap: 6px;
  padding: 8px 16px;
  background: rgba(53, 62, 70, 0.8);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 8px;
  color: #cad4df;
  font-size: 12px;
  font-weight: 500;
  cursor: pointer;
  transition: all 0.2s;
}
.ctrl-btn:hover {
  background: rgba(139, 71, 137, 0.4);
  border-color: rgba(139, 71, 137, 0.5);
}

.livery-control {
  display: flex;
  align-items: center;
  gap: 4px;
  background: rgba(55, 58, 61, 0.8);
  border-radius: 8px;
  overflow: hidden;
}

.livery-btn {
  width: 30px;
  height: 30px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(139, 71, 137, 0.3);
  border: none;
  color: #e0c8df;
  font-size: 14px;
  font-weight: 600;
  cursor: pointer;
  transition: background 0.15s;
}
.livery-btn:hover {
  background: rgba(139, 71, 137, 0.6);
}

.livery-label {
  font-size: 11px;
  color: #cad4df;
  min-width: 80px;
  text-align: center;
  padding: 0 8px;
}
</style>
