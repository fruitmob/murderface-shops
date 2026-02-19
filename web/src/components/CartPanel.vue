<script setup lang="ts">
import { useCartStore } from '../stores/cart'
import { useConfigStore } from '../stores/config'
import { useCart } from '../composables/useCart'
import { getItemImageSrc, getItemFallback } from '../utils/getImageSrc'
import { formatPrice } from '../utils/formatPrice'
import CartPayment from './CartPayment.vue'

const cart = useCartStore()
const config = useConfigStore()
const { removeFromCart, updateQty, emptyCart } = useCart()

function handleImgError(e: Event) {
  (e.target as HTMLImageElement).src = getItemFallback(false)
}
</script>

<template>
  <div class="cart-panel">
    <div class="cart-header">
      <h3>
        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/>
          <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/>
        </svg>
        Cart
        <span class="cart-count">({{ cart.totalCount }})</span>
      </h3>
      <button v-if="cart.totalCount > 0" class="empty-btn" @click="emptyCart">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <polyline points="3,6 5,6 21,6"/>
          <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"/>
        </svg>
        Empty
      </button>
    </div>

    <div class="cart-items">
      <TransitionGroup name="cart-item">
        <div
          v-for="item in cart.cartItems"
          :key="item.cartId"
          class="cart-row"
        >
          <div class="cart-row-img">
            <img
              :src="getItemImageSrc(item.data.name, config.imgpath, item.data.metadata)"
              :alt="item.data.label"
              @error="handleImgError"
            />
          </div>

          <div class="cart-row-info">
            <span class="cart-row-name">{{ item.data.label }}</span>
            <span class="cart-row-price">{{ formatPrice(item.data.price) }}</span>
          </div>

          <div class="cart-row-qty">
            <button class="qty-btn" @click="updateQty(item.cartId, -1)">-</button>
            <span class="qty-val">{{ item.count }}</span>
            <button class="qty-btn" @click="updateQty(item.cartId, 1)">+</button>
          </div>

          <span class="cart-row-total">{{ formatPrice(item.data.price * item.count) }}</span>

          <button class="remove-btn" @click="removeFromCart(item.cartId)">
            <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
              <line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/>
            </svg>
          </button>
        </div>
      </TransitionGroup>

      <div v-if="cart.totalCount === 0" class="cart-empty">
        <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" opacity="0.3">
          <circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/>
          <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/>
        </svg>
        <p>Cart is empty</p>
      </div>
    </div>

    <CartPayment />
  </div>
</template>

<style scoped>
.cart-panel {
  display: flex;
  flex-direction: column;
  background: linear-gradient(135deg, #1e1e24 0%, #252530 100%);
  border: 1px solid rgba(139, 71, 137, 0.2);
  border-radius: 10px;
  overflow: hidden;
  height: 100%;
}

.cart-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 12px 16px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.06);
}

.cart-header h3 {
  display: flex;
  align-items: center;
  gap: 6px;
  font-size: 13px;
  font-weight: 600;
  color: #e0e0e0;
}

.cart-count {
  color: rgba(255, 255, 255, 0.4);
  font-weight: 400;
}

.empty-btn {
  display: flex;
  align-items: center;
  gap: 4px;
  padding: 4px 10px;
  background: rgba(255, 88, 88, 0.1);
  border: 1px solid rgba(255, 88, 88, 0.2);
  border-radius: 6px;
  color: #ff5858;
  font-size: 10px;
  font-weight: 500;
  cursor: pointer;
  transition: all 0.2s;
}
.empty-btn:hover {
  background: rgba(255, 88, 88, 0.25);
}

.cart-items {
  flex: 1;
  overflow-y: auto;
  padding: 8px;
}

.cart-row {
  display: flex;
  align-items: center;
  gap: 8px;
  padding: 8px;
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.04);
  border-radius: 8px;
  margin-bottom: 6px;
  transition: all 0.2s;
}
.cart-row:hover {
  background: rgba(255, 255, 255, 0.04);
}

.cart-row-img {
  width: 36px;
  height: 36px;
  flex-shrink: 0;
  display: flex;
  align-items: center;
  justify-content: center;
}
.cart-row-img img {
  max-width: 32px;
  max-height: 32px;
  object-fit: contain;
}

.cart-row-info {
  flex: 1;
  min-width: 0;
}

.cart-row-name {
  display: block;
  font-size: 11px;
  font-weight: 600;
  color: #e0e0e0;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.cart-row-price {
  font-size: 10px;
  color: rgba(255, 255, 255, 0.35);
}

.cart-row-qty {
  display: flex;
  align-items: center;
  gap: 4px;
}

.qty-btn {
  width: 22px;
  height: 22px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(107, 53, 105, 0.3);
  border: 1px solid rgba(139, 71, 137, 0.3);
  border-radius: 5px;
  color: #e0c8df;
  font-size: 13px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.15s;
}
.qty-btn:hover {
  background: rgba(139, 71, 137, 0.5);
}

.qty-val {
  font-size: 12px;
  font-weight: 600;
  color: #fff;
  min-width: 20px;
  text-align: center;
}

.cart-row-total {
  font-size: 12px;
  font-weight: 600;
  color: #8bc34a;
  min-width: 48px;
  text-align: right;
}

.remove-btn {
  width: 22px;
  height: 22px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(255, 88, 88, 0.08);
  border: none;
  border-radius: 5px;
  color: #ff5858;
  cursor: pointer;
  transition: all 0.15s;
}
.remove-btn:hover {
  background: rgba(255, 88, 88, 0.3);
}

.cart-empty {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 8px;
  padding: 30px;
  color: rgba(255, 255, 255, 0.25);
  font-size: 12px;
}

/* Transition group animations */
.cart-item-enter-active {
  transition: all 0.25s ease;
}
.cart-item-leave-active {
  transition: all 0.2s ease;
}
.cart-item-enter-from {
  opacity: 0;
  transform: translateX(20px);
}
.cart-item-leave-to {
  opacity: 0;
  transform: translateX(-20px);
}
.cart-item-move {
  transition: transform 0.25s ease;
}
</style>
