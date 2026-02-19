import { useCartStore } from '../stores/cart'
import { useShopStore } from '../stores/shop'
import { nuiCallback } from '../utils/callback'
import type { ShopItem } from '../types/shop'

export function useCart() {
  const cart = useCartStore()
  const shop = useShopStore()

  async function addToCart(index: string | number, item: ShopItem, qty = 1, metadatas?: Record<string, string>) {
    if (item.stock !== undefined && item.stock <= 0) {
      await nuiCallback('outOfStock', { item: item.name, amount: qty })
      return
    }

    if (item.stock !== undefined && qty > item.stock) {
      await nuiCallback('limitReached', { item: item.name, amount: qty })
      return
    }

    const vehicle = {
      livery: shop.vehicleViewData?.livery ? -1 : -1,
      color: shop.vehicleViewData?.color ?? 3,
      liverymod: shop.vehicleViewData?.liverymod ?? -1,
    }

    const cartId = cart.addItem(index, item, qty, vehicle, metadatas)

    // Notify Lua of cart add
    await nuiCallback('addToCart', { item: item.name, amount: qty })

    // Sync cart to server
    await nuiCallback('syncCart', { cart: cart.toLuaCart() })

    return cartId
  }

  function removeFromCart(cartId: number) {
    cart.removeItem(cartId)
    nuiCallback('syncCart', { cart: cart.toLuaCart() })
  }

  function updateQty(cartId: number, delta: number) {
    cart.updateQty(cartId, delta)
    nuiCallback('syncCart', { cart: cart.toLuaCart() })
  }

  async function pay(method: 'money' | 'bank') {
    await nuiCallback('payItems', {
      items: cart.toLuaCart(),
      paymentMethod: method,
    })
    cart.clear()
  }

  function emptyCart() {
    cart.clear()
    nuiCallback('syncCart', { cart: {} })
  }

  return { addToCart, removeFromCart, updateQty, pay, emptyCart }
}
