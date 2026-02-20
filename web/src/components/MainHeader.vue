<script setup lang="ts">
import { useShopStore } from '../stores/shop'
import { formatPrice } from '../utils/formatPrice'

const emit = defineEmits<{ close: [] }>()
const shop = useShopStore()
</script>

<template>
  <header class="main-header">
    <div class="header-left">
      <div class="shop-icon">
        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/>
          <polyline points="9,22 9,12 15,12 15,22"/>
        </svg>
      </div>
      <h1 class="shop-name">{{ shop.shopLabel }}</h1>
    </div>

    <div class="header-right">
      <div class="wallet-item">
        <span class="wallet-label">Cash</span>
        <span class="wallet-value">{{ formatPrice(shop.wallet.money) }}</span>
      </div>
      <div class="wallet-item">
        <span class="wallet-label">Bank</span>
        <span class="wallet-value">{{ formatPrice(shop.wallet.bank) }}</span>
      </div>
      <button class="close-btn" @click="emit('close')" title="Close">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
          <line x1="18" y1="6" x2="6" y2="18"/>
          <line x1="6" y1="6" x2="18" y2="18"/>
        </svg>
      </button>
    </div>
  </header>
</template>

<style scoped>
/* Phase 3.3 — glass header with purple accent */
.main-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 10px 18px;
  background: rgba(255, 255, 255, 0.015);
  border: none;
  border-bottom: 1px solid rgba(139, 71, 137, 0.12);
  border-radius: 0;
  box-shadow: 0 1px 0 rgba(139, 71, 137, 0.06);
  flex-shrink: 0;
}

.header-left {
  display: flex;
  align-items: center;
  gap: 10px;
}

.shop-icon {
  width: 34px;
  height: 34px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(139, 71, 137, 0.12);
  border: 1px solid rgba(139, 71, 137, 0.2);
  border-radius: var(--ms-r-md);
  color: #b57bb3;
  box-shadow: 0 0 16px rgba(139, 71, 137, 0.1);
}
.shop-icon svg {
  width: 18px;
  height: 18px;
}

.shop-name {
  font-size: 16px;
  font-weight: 600;
  color: #fff;
  letter-spacing: 0.3px;
  text-shadow: 0 0 24px rgba(139, 71, 137, 0.25);
}

.header-right {
  display: flex;
  align-items: center;
  gap: 12px;
}

.wallet-item {
  display: flex;
  flex-direction: column;
  align-items: flex-end;
  padding: 3px 10px;
  background: rgba(255, 255, 255, 0.025);
  border: 1px solid rgba(255, 255, 255, 0.05);
  border-radius: 6px;
  backdrop-filter: blur(8px);
  -webkit-backdrop-filter: blur(8px);
}

.wallet-label {
  font-size: 10px;
  font-weight: 500;
  color: rgba(255, 255, 255, 0.4);
  text-transform: uppercase;
  letter-spacing: 0.8px;
}

.wallet-value {
  font-size: 14px;
  font-weight: 600;
  color: var(--ms-price);
  text-shadow: 0 0 12px rgba(139, 195, 74, 0.25);
}

.close-btn {
  width: 30px;
  height: 30px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(255, 88, 88, 0.1);
  border: 1px solid rgba(255, 88, 88, 0.2);
  border-radius: var(--ms-r-sm);
  color: var(--ms-danger);
  cursor: pointer;
  backdrop-filter: blur(8px);
  -webkit-backdrop-filter: blur(8px);
  transition: all 0.25s var(--ms-ease);
}
.close-btn svg {
  width: 16px;
  height: 16px;
}

.close-btn:hover {
  background: rgba(255, 88, 88, 0.25);
  border-color: rgba(255, 88, 88, 0.5);
  box-shadow: 0 0 14px rgba(255, 88, 88, 0.2);
}
</style>
