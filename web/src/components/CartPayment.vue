<script setup lang="ts">
import { useCartStore } from '../stores/cart'
import { useShopStore } from '../stores/shop'
import { useCart } from '../composables/useCart'
import { formatPrice } from '../utils/formatPrice'

const cart = useCartStore()
const shop = useShopStore()
const { pay } = useCart()
</script>

<template>
  <div class="cart-payment" v-if="!shop.duty">
    <div class="payment-total">
      <span class="total-label">Total</span>
      <span class="total-value">{{ formatPrice(cart.animatedTotal) }}</span>
    </div>

    <div class="payment-buttons" v-if="cart.totalCount > 0">
      <button class="pay-btn pay-cash" @click="pay('money')">
        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <line x1="12" y1="1" x2="12" y2="23"/><path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"/>
        </svg>
        Pay Cash
      </button>
      <button class="pay-btn pay-bank" @click="pay('bank')">
        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <rect x="1" y="4" width="22" height="16" rx="2" ry="2"/><line x1="1" y1="10" x2="23" y2="10"/>
        </svg>
        Pay Bank
      </button>
    </div>
  </div>
</template>

<style scoped>
/* Phase 3.3 — neon total + vibrant payment buttons */
.cart-payment {
  padding: 10px 16px;
  border-top: 1px solid rgba(139, 71, 137, 0.08);
  flex-shrink: 0;
}

.payment-total {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 8px;
}

.total-label {
  font-size: 13px;
  font-weight: 500;
  color: rgba(255, 255, 255, 0.5);
}

.total-value {
  font-size: 20px;
  font-weight: 700;
  color: var(--ms-price);
  font-variant-numeric: tabular-nums;
  text-shadow: 0 0 18px rgba(139, 195, 74, 0.25);
}

.payment-buttons {
  display: flex;
  gap: 8px;
}

.pay-btn {
  flex: 1;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 6px;
  height: 38px;
  border: none;
  border-radius: var(--ms-r-sm);
  font-size: 13px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.25s var(--ms-ease);
}

.pay-cash {
  background: linear-gradient(135deg, #264a26 0%, #367836 100%);
  color: #c8e6c9;
  box-shadow: 0 2px 12px rgba(76, 175, 80, 0.1);
}
.pay-cash:hover {
  background: linear-gradient(135deg, #2e6e2e 0%, #42a042 100%);
  box-shadow: 0 4px 24px rgba(76, 175, 80, 0.25);
  transform: translateY(-1px);
}

.pay-bank {
  background: linear-gradient(135deg, #263a5e 0%, #35609e 100%);
  color: #c8d6e6;
  box-shadow: 0 2px 12px rgba(74, 124, 192, 0.1);
}
.pay-bank:hover {
  background: linear-gradient(135deg, #2e508e 0%, #4280c8 100%);
  box-shadow: 0 4px 24px rgba(74, 124, 192, 0.25);
  transform: translateY(-1px);
}
</style>
