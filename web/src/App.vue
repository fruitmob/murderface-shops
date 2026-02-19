<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'
import { useShopStore } from './stores/shop'
import { useBridge } from './composables/useBridge'
import MainHeader from './components/MainHeader.vue'
import CategoryList from './components/CategoryList.vue'
import ItemGrid from './components/ItemGrid.vue'
import CartPanel from './components/CartPanel.vue'
import VehiclePreview from './components/VehiclePreview.vue'
import VehicleStats from './components/VehicleStats.vue'
import WeaponCustomize from './components/WeaponCustomize.vue'
import SpeechBubble from './components/SpeechBubble.vue'

const shop = useShopStore()
const { closeShop } = useBridge()

interface BubbleData {
  id: string
  type: 'bubble' | 'bubbleremove'
  x: number
  y: number
  title: string
  message: string
  wait: number
}

const bubbles = ref<Map<string, BubbleData>>(new Map())

function handleBubble(e: Event) {
  const data = (e as CustomEvent).detail as BubbleData
  if (data.type === 'bubbleremove') {
    bubbles.value.delete(data.id)
    bubbles.value = new Map(bubbles.value)
  } else {
    bubbles.value.set(data.id, data)
    bubbles.value = new Map(bubbles.value)
  }
}

onMounted(() => window.addEventListener('shop:bubble', handleBubble))
onUnmounted(() => window.removeEventListener('shop:bubble', handleBubble))

// Weapon customize modal state
const weaponModal = ref<{ itemIndex: string | number; itemName: string } | null>(null)

function openWeaponModal(index: string | number, name: string) {
  weaponModal.value = { itemIndex: index, itemName: name }
}
function closeWeaponModal() {
  weaponModal.value = null
}
</script>

<template>
  <div class="shop-root">
    <!-- Bubbles render always (even when shop is closed for customer speech) -->
    <SpeechBubble
      v-for="[id, bubble] in bubbles"
      :key="id"
      :data="bubble"
    />

    <Transition name="shop-fade">
      <div v-if="shop.isOpen" class="shop-overlay" :class="{ 'vehicle-mode': shop.isVehicleShop }">
        <div class="shop-container">
          <MainHeader @close="closeShop" />

          <div class="shop-body">
            <!-- Left side: items or vehicle preview -->
            <div class="shop-left">
              <template v-if="shop.isVehicleShop">
                <VehiclePreview />
                <VehicleStats v-if="shop.vehicleStats" />
              </template>
              <template v-else>
                <CategoryList />
                <ItemGrid @weapon-customize="openWeaponModal" />
              </template>
            </div>

            <!-- Right side: cart -->
            <div class="shop-right">
              <template v-if="shop.isVehicleShop">
                <CategoryList />
                <ItemGrid @weapon-customize="openWeaponModal" />
              </template>
              <template v-else>
                <CartPanel />
              </template>
            </div>
          </div>
        </div>

        <!-- Weapon customize modal -->
        <WeaponCustomize
          v-if="weaponModal"
          :item-index="weaponModal.itemIndex"
          :item-name="weaponModal.itemName"
          @close="closeWeaponModal"
        />
      </div>
    </Transition>
  </div>
</template>

<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Inter', sans-serif;
  background: transparent;
  color: #e0e0e0;
  overflow: hidden;
  user-select: none;
}

::-webkit-scrollbar {
  width: 4px;
}
::-webkit-scrollbar-track {
  background: rgba(0, 0, 0, 0.2);
  border-radius: 4px;
}
::-webkit-scrollbar-thumb {
  background: rgba(139, 71, 137, 0.6);
  border-radius: 4px;
}
::-webkit-scrollbar-thumb:hover {
  background: rgba(139, 71, 137, 0.9);
}
</style>

<style scoped>
.shop-root {
  width: 100vw;
  height: 100vh;
  position: relative;
}

.shop-overlay {
  position: absolute;
  inset: 0;
  background: rgba(14, 16, 18, 0.58);
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 2vh 2vw;
}

.shop-overlay.vehicle-mode {
  background: rgba(14, 16, 18, 0.12);
}

.shop-container {
  width: 100%;
  max-width: 1100px;
  height: 80vh;
  display: flex;
  flex-direction: column;
  gap: 6px;
}

.shop-body {
  flex: 1;
  display: flex;
  gap: 8px;
  min-height: 0;
}

.shop-left {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 6px;
  min-height: 0;
}

.shop-right {
  width: 280px;
  flex-shrink: 0;
  display: flex;
  flex-direction: column;
  gap: 6px;
  min-height: 0;
}

.vehicle-mode .shop-left {
  flex: 2;
}

.vehicle-mode .shop-right {
  flex: 1;
  width: auto;
}

/* Transitions */
.shop-fade-enter-active {
  transition: opacity 0.25s ease;
}
.shop-fade-leave-active {
  transition: opacity 0.15s ease;
}
.shop-fade-enter-from,
.shop-fade-leave-to {
  opacity: 0;
}
</style>
