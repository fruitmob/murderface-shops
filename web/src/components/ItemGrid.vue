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

        <span class="item-name">{{ item.label }}</span>

        <div class="item-price-row">
          <span class="item-price">{{ formatPrice(item.price) }}</span>
          <span class="item-stock">{{ item.stock ?? '\u221E' }}</span>
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
.item-grid-wrapper {
  flex: 1;
  overflow-y: auto;
  border-radius: 8px;
}

.item-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(135px, 1fr));
  gap: 6px;
  padding: 2px;
}

.item-card {
  background: linear-gradient(145deg, #1e2124 0%, #252830 100%);
  border: 1px solid rgba(139, 71, 137, 0.2);
  border-radius: 8px;
  padding: 8px;
  display: flex;
  flex-direction: column;
  gap: 4px;
  cursor: pointer;
  transition: all 0.2s;
}

.item-card:hover {
  border-color: rgba(171, 103, 169, 0.5);
  box-shadow: 0 0 14px rgba(139, 71, 137, 0.18);
  transform: translateY(-1px);
}

.item-img-wrap {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 52px;
  background: rgba(255, 255, 255, 0.02);
  border-radius: 6px;
}

.item-img {
  max-height: 46px;
  max-width: 90%;
  object-fit: contain;
  transition: transform 0.3s;
}

/* Fallback styling for broken images */
.item-img[src*="data:image/svg"] {
  opacity: 0.5;
  max-height: 36px;
}

.item-card:hover .item-img {
  transform: scale(1.06);
}

.badge {
  position: absolute;
  top: 2px;
  right: 2px;
  font-size: 8px;
  font-weight: 700;
  padding: 1px 5px;
  border-radius: 3px;
  letter-spacing: 0.3px;
  text-transform: uppercase;
}
.badge-addon {
  background: rgba(139, 71, 137, 0.6);
  color: #edd6ec;
}
.badge-custom {
  background: rgba(139, 71, 137, 0.35);
  color: #d4b3d3;
  top: auto;
  bottom: 2px;
}

.item-name {
  font-size: 11px;
  font-weight: 600;
  color: #e0e0e0;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  line-height: 1.3;
}

.item-price-row {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 4px;
}

.item-price {
  font-size: 13px;
  font-weight: 700;
  color: #8bc34a;
}

.item-stock {
  font-size: 9px;
  font-weight: 600;
  color: rgba(255, 255, 255, 0.35);
  padding: 1px 5px;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 3px;
}

.item-actions {
  display: flex;
  gap: 5px;
  align-items: center;
  margin-top: 2px;
}

.qty-input {
  width: 36px;
  height: 28px;
  text-align: center;
  background: rgba(62, 66, 70, 0.8);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 5px;
  color: #fff;
  font-size: 11px;
  -moz-appearance: textfield;
}
.qty-input::-webkit-inner-spin-button,
.qty-input::-webkit-outer-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
.qty-input:focus {
  outline: none;
  border-color: rgba(139, 71, 137, 0.5);
}

.add-btn {
  flex: 1;
  height: 28px;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 4px;
  background: rgba(107, 53, 105, 0.4);
  border: 1px solid rgba(139, 71, 137, 0.3);
  border-radius: 5px;
  color: #e0c8df;
  font-size: 10px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.2s;
}
.add-btn:hover {
  background: rgba(139, 71, 137, 0.55);
  border-color: rgba(171, 103, 169, 0.6);
}

.empty-state {
  grid-column: 1 / -1;
  text-align: center;
  padding: 40px;
  color: rgba(255, 255, 255, 0.3);
  font-size: 13px;
}
</style>
