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
.main-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 10px 16px;
  background: linear-gradient(135deg, #1e1e24 0%, #252530 100%);
  border: 1px solid rgba(139, 71, 137, 0.3);
  border-radius: 10px;
  flex-shrink: 0;
}

.header-left {
  display: flex;
  align-items: center;
  gap: 12px;
}

.shop-icon {
  width: 34px;
  height: 34px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(139, 71, 137, 0.2);
  border-radius: 8px;
  color: #b57bb3;
}

.shop-name {
  font-size: 16px;
  font-weight: 700;
  color: #fff;
  letter-spacing: 0.3px;
}

.header-right {
  display: flex;
  align-items: center;
  gap: 16px;
}

.wallet-item {
  display: flex;
  flex-direction: column;
  align-items: flex-end;
  padding: 5px 14px;
  background: rgba(255, 255, 255, 0.06);
  border: 1px solid rgba(255, 255, 255, 0.06);
  border-radius: 8px;
}

.wallet-label {
  font-size: 9px;
  font-weight: 600;
  color: rgba(255, 255, 255, 0.45);
  text-transform: uppercase;
  letter-spacing: 1px;
}

.wallet-value {
  font-size: 15px;
  font-weight: 700;
  color: #8bc34a;
  font-variant-numeric: tabular-nums;
}

.close-btn {
  width: 32px;
  height: 32px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(255, 88, 88, 0.1);
  border: 1px solid rgba(255, 88, 88, 0.2);
  border-radius: 8px;
  color: #ff5858;
  cursor: pointer;
  transition: all 0.2s;
}

.close-btn:hover {
  background: rgba(255, 88, 88, 0.25);
  border-color: rgba(255, 88, 88, 0.5);
}
</style>
