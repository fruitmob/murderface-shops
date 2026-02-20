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

/* --- Phase 3.3 design tokens --- */
:root {
  --ms-shell: rgba(10, 12, 16, 0.78);
  --ms-shell-border: rgba(255, 255, 255, 0.04);
  --ms-overlay: transparent;
  --ms-divider: rgba(255, 255, 255, 0.06);
  --ms-divider-soft: rgba(255, 255, 255, 0.04);
  --ms-surface: rgba(255, 255, 255, 0.02);
  --ms-surface-hover: rgba(255, 255, 255, 0.045);
  --ms-border: rgba(255, 255, 255, 0.05);
  --ms-border-hover: rgba(139, 71, 137, 0.35);
  --ms-accent: rgba(139, 71, 137, 0.18);
  --ms-accent-border: rgba(139, 71, 137, 0.4);
  --ms-accent-hover: rgba(139, 71, 137, 0.22);
  --ms-price: #8bc34a;
  --ms-danger: #ff5858;
  --ms-r-sm: 4px;
  --ms-r-md: 6px;
  --ms-r-lg: 8px;
  --ms-cart-w: 380px;
  --ms-ease: cubic-bezier(0.4, 0, 0.2, 1);
}

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
  width: 5px;
}
::-webkit-scrollbar-track {
  background: rgba(0, 0, 0, 0.2);
  border-radius: 4px;
}
::-webkit-scrollbar-thumb {
  background: rgba(139, 71, 137, 0.25);
  border-radius: 4px;
}
::-webkit-scrollbar-thumb:hover {
  background: rgba(139, 71, 137, 0.45);
}
</style>

<style scoped>
.shop-root {
  width: 100vw;
  height: 100vh;
  position: relative;
}

/* Overlay: very subtle dim behind panel */
.shop-overlay {
  position: absolute;
  inset: 0;
  background: transparent;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0;
}

.shop-overlay.vehicle-mode {
  background: transparent;
  align-items: center;
  padding: 2vh 2vw;
}

/* Shell container */
.shop-container {
  width: 75vw;
  max-width: 1800px;
  height: 75vh;
  max-height: none;
  min-height: 480px;
  display: flex;
  flex-direction: column;
  gap: 0;
  background: linear-gradient(
    160deg,
    rgba(16, 18, 24, 0.92) 0%,
    rgba(12, 14, 20, 0.95) 50%,
    rgba(20, 14, 24, 0.92) 100%
  );
  border: 1px solid rgba(255, 255, 255, 0.04);
  border-radius: 8px;
  box-shadow: 0 8px 48px rgba(0, 0, 0, 0.4);
  /* backdrop-filter removed — causes black render in FiveM NUI CEF */
  overflow: hidden;
}

.shop-body {
  flex: 1;
  display: flex;
  gap: 0;
  min-height: 0;
}

.shop-left {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 0;
  min-height: 0;
}

.shop-right {
  width: var(--ms-cart-w);
  flex-shrink: 0;
  display: flex;
  flex-direction: column;
  gap: 0;
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
