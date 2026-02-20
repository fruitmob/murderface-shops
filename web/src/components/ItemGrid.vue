<script setup lang="ts">
import { ref } from 'vue'
import { useShopStore } from '../stores/shop'
import { useConfigStore } from '../stores/config'
import { useCart } from '../composables/useCart'
import { getItemImageSrc, getVehicleImageSrc, getItemFallback } from '../utils/getImageSrc'
import { formatPrice } from '../utils/formatPrice'
import { nuiCallback } from '../utils/callback'
import type { ShopItem } from '../types/shop'

const emit = defineEmits<{
  'weapon-customize': [index: string | number, name: string]
}>()

const shop = useShopStore()
const config = useConfigStore()
const { addToCart } = useCart()

const quantities = ref<Record<string | number, number>>({})

function getQty(index: number): number {
  return quantities.value[index] || 1
}

function setQty(index: number, val: number) {
  const item = shop.filteredItems[index]
  const max = item?.stock ?? 999
  quantities.value[index] = Math.max(1, Math.min(val, max))
}

function getImgSrc(item: ShopItem): string {
  if (shop.isVehicleShop) {
    return getVehicleImageSrc(item.name, item.hash, config.vImageCreator)
  }
  return getItemImageSrc(item.name, config.imgpath, item.metadata)
}

function handleImgError(e: Event) {
  const img = e.target as HTMLImageElement
  img.src = getItemFallback(shop.isVehicleShop)
}

function handleItemClick(item: ShopItem, globalIndex: number) {
  if (shop.isVehicleShop) {
    shop.setCurrentVehicle(item.name)
    nuiCallback('vehicleView', { model: item.name })
  } else if (shop.isWeaponShop) {
    emit('weapon-customize', globalIndex, item.name)
  }
}

function handleAddToCart(item: ShopItem, globalIndex: number, localIndex: number) {
  const qty = getQty(localIndex)
  addToCart(globalIndex, item, qty)
  quantities.value[localIndex] = 1
}

function getGlobalIndex(item: ShopItem): number {
  return shop.items.indexOf(item)
}
</script>

<template>
  <div class="item-grid-wrapper">
    <div class="item-grid">
      <div
        v-for="(item, idx) in shop.filteredItems"
        :key="item.name + '-' + idx"
        class="item-card"
        @click="handleItemClick(item, getGlobalIndex(item))"
      >
        <div class="item-img-wrap">
          <img
            :src="getImgSrc(item)"
            :alt="item.label"
            @error="handleImgError"
            class="item-img"
          />
          <span v-if="item.customise" class="badge badge-addon">Addons</span>
          <span v-if="item.component" class="badge badge-custom">Customise</span>
        </div>

        <div class="item-info">
          <span class="item-name">{{ item.label }}</span>
          <span class="item-price">{{ formatPrice(item.price) }}</span>
        </div>

        <div class="item-stock">
          Stock: <span>{{ item.stock ?? '\u221E' }}</span>
        </div>

        <div class="item-actions" @click.stop>
          <input
            type="number"
            class="qty-input"
            :value="getQty(idx)"
            @input="setQty(idx, parseInt(($event.target as HTMLInputElement).value) || 1)"
            min="1"
            :max="item.stock ?? 999"
          />
          <button class="add-btn" @click="handleAddToCart(item, getGlobalIndex(item), idx)">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
              <circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/>
              <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/>
            </svg>
            Add
          </button>
        </div>
      </div>

      <div v-if="shop.filteredItems.length === 0" class="empty-state">
        No items available
      </div>
    </div>
  </div>
</template>

<style scoped>
/* Phase 3.3 — glassmorphism cards + neon accents */
.item-grid-wrapper {
  flex: 1;
  overflow-y: auto;
  border-radius: 0;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  padding: 6px 10px;
}

.item-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
  gap: 10px;
  padding: 0;
  align-content: start;
  align-items: start;
}

.item-card {
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.05);
  border-radius: 8px;
  padding: 10px 10px;
  display: flex;
  flex-direction: column;
  gap: 6px;
  align-self: start;
  cursor: pointer;
  backdrop-filter: blur(6px);
  -webkit-backdrop-filter: blur(6px);
  transition: all 0.3s var(--ms-ease);
}

.item-card:hover {
  background: rgba(255, 255, 255, 0.045);
  border-color: rgba(139, 71, 137, 0.35);
  box-shadow: 0 4px 24px rgba(139, 71, 137, 0.12),
              0 0 40px rgba(139, 71, 137, 0.04);
  transform: translateY(-2px);
}

.item-img-wrap {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 88px;
  background: radial-gradient(ellipse at center, rgba(139, 71, 137, 0.035) 0%, transparent 70%);
  border-radius: 6px;
}

.item-card:hover .item-img-wrap {
  background: radial-gradient(ellipse at center, rgba(139, 71, 137, 0.07) 0%, transparent 70%);
}

.item-img {
  max-height: 80px;
  max-width: 100%;
  object-fit: contain;
  transition: transform 0.3s var(--ms-ease);
}

.item-card:hover .item-img {
  transform: scale(1.05);
}

.badge {
  position: absolute;
  top: 2px;
  right: 2px;
  font-size: 10px;
  font-weight: 600;
  padding: 2px 7px;
  border-radius: var(--ms-r-sm);
}
.badge-addon {
  background: rgba(139, 71, 137, 0.4);
  color: #e8d0e7;
  box-shadow: 0 0 8px rgba(139, 71, 137, 0.15);
}
.badge-custom {
  background: rgba(76, 175, 80, 0.4);
  color: #b5e5b7;
  top: auto;
  bottom: 2px;
}

.item-info {
  display: flex;
  flex-direction: column;
  gap: 2px;
}

.item-name {
  font-size: 13px;
  font-weight: 600;
  color: #e0e0e0;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.item-price {
  font-size: 14px;
  font-weight: 600;
  color: var(--ms-price);
  text-shadow: 0 0 10px rgba(139, 195, 74, 0.2);
}

.item-stock {
  font-size: 10px;
  color: rgba(255, 255, 255, 0.45);
  padding: 3px 8px;
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.04);
  border-radius: var(--ms-r-sm);
  text-align: center;
}
.item-stock span {
  color: #d3d4d5;
  font-weight: 600;
}

.item-actions {
  display: flex;
  gap: 6px;
  align-items: center;
}

.qty-input {
  width: 40px;
  height: 28px;
  text-align: center;
  background: rgba(255, 255, 255, 0.03);
  border: 1px solid rgba(255, 255, 255, 0.06);
  border-radius: var(--ms-r-sm);
  color: #fff;
  font-size: 12px;
  -moz-appearance: textfield;
}
.qty-input::-webkit-inner-spin-button,
.qty-input::-webkit-outer-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
.qty-input:focus {
  outline: none;
  border-color: rgba(139, 71, 137, 0.45);
  box-shadow: 0 0 10px rgba(139, 71, 137, 0.12);
}

.add-btn {
  flex: 1;
  height: 28px;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 4px;
  background: rgba(255, 255, 255, 0.03);
  border: 1px solid rgba(255, 255, 255, 0.05);
  border-radius: var(--ms-r-sm);
  color: rgba(255, 255, 255, 0.5);
  font-size: 11px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.25s var(--ms-ease);
}
.add-btn:hover {
  background: rgba(139, 71, 137, 0.22);
  border-color: rgba(139, 71, 137, 0.4);
  color: #e8d0e7;
  box-shadow: 0 0 14px rgba(139, 71, 137, 0.12);
}

.empty-state {
  grid-column: 1 / -1;
  text-align: center;
  padding: 32px;
  color: rgba(255, 255, 255, 0.3);
  font-size: 13px;
}
</style>
