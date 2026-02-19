<script setup lang="ts">
import { useShopStore } from '../stores/shop'

const shop = useShopStore()

function clamp(val: number): number {
  return Math.min(100, Math.max(0, val))
}
</script>

<template>
  <div class="vehicle-stats" v-if="shop.vehicleStats">
    <h3 class="stats-title">{{ shop.vehicleStats.label }}</h3>

    <div class="stat-bar">
      <span class="stat-label">Top Speed</span>
      <div class="stat-track">
        <div class="stat-fill" :style="{ width: clamp(shop.vehicleStats.topspeed) + '%' }" />
      </div>
    </div>

    <div class="stat-bar">
      <span class="stat-label">Acceleration</span>
      <div class="stat-track">
        <div class="stat-fill" :style="{ width: clamp(shop.vehicleStats.acceleration) + '%' }" />
      </div>
    </div>

    <div class="stat-bar">
      <span class="stat-label">Traction</span>
      <div class="stat-track">
        <div class="stat-fill" :style="{ width: clamp(shop.vehicleStats.traction) + '%' }" />
      </div>
    </div>

    <div class="stat-bar">
      <span class="stat-label">Brakes</span>
      <div class="stat-track">
        <div class="stat-fill" :style="{ width: clamp(shop.vehicleStats.brakes) + '%' }" />
      </div>
    </div>
  </div>
</template>

<style scoped>
.vehicle-stats {
  background: linear-gradient(135deg, #171a1c 0%, #1e2124 100%);
  border: 1px solid rgba(139, 71, 137, 0.2);
  border-radius: 10px;
  padding: 16px;
  flex-shrink: 0;
}

.stats-title {
  font-size: 14px;
  font-weight: 600;
  color: #e8ebf1;
  margin-bottom: 14px;
  padding-bottom: 8px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.06);
}

.stat-bar {
  margin-bottom: 12px;
}
.stat-bar:last-child {
  margin-bottom: 0;
}

.stat-label {
  display: block;
  font-size: 11px;
  font-weight: 500;
  color: rgba(255, 255, 255, 0.6);
  margin-bottom: 4px;
}

.stat-track {
  height: 5px;
  background: rgba(70, 72, 74, 0.6);
  border-radius: 10px;
  overflow: hidden;
}

.stat-fill {
  height: 100%;
  background: linear-gradient(90deg, #6b3569, #b57bb3);
  border-radius: 10px;
  transition: width 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94);
}
</style>
