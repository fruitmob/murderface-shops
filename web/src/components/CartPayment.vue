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
.cart-payment {
  padding: 10px 12px;
  border-top: 1px solid rgba(255, 255, 255, 0.06);
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
  font-size: 18px;
  font-weight: 700;
  color: #8bc34a;
  font-variant-numeric: tabular-nums;
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
  gap: 5px;
  height: 34px;
  border: none;
  border-radius: 6px;
  font-size: 11px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.2s;
}

.pay-cash {
  background: linear-gradient(135deg, #2d5a2d 0%, #3a7c3a 100%);
  color: #c8e6c9;
}
.pay-cash:hover {
  background: linear-gradient(135deg, #3a7c3a 0%, #4caf50 100%);
  box-shadow: 0 0 12px rgba(76, 175, 80, 0.3);
}

.pay-bank {
  background: linear-gradient(135deg, #2d3d5a 0%, #3a5c8c 100%);
  color: #c8d6e6;
}
.pay-bank:hover {
  background: linear-gradient(135deg, #3a5c8c 0%, #4a7cc0 100%);
  box-shadow: 0 0 12px rgba(74, 124, 192, 0.3);
}
</style>
