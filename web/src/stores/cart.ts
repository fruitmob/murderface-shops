import { defineStore } from 'pinia'
import { ref, computed } from 'vue'
import type { CartItem, PaymentMethod } from '../types/cart'
import type { ShopItem } from '../types/shop'

export const useCartStore = defineStore('cart', () => {
  const items = ref<Map<number, CartItem>>(new Map())
  const nextId = ref(1)
  const animatedTotal = ref(0)
  let animFrame = 0

  const totalPrice = computed(() => {
    let total = 0
    for (const item of items.value.values()) {
      total += item.data.price * item.count
    }
    return total
  })

  const totalCount = computed(() => {
    let total = 0
    for (const item of items.value.values()) {
      total += item.count
    }
    return total
  })

  const cartItems = computed(() => Array.from(items.value.values()))

  function findExistingCartId(shopItem: ShopItem, hasMeta: boolean): number | null {
    if (hasMeta) return null
    for (const [id, cartItem] of items.value.entries()) {
      if (!cartItem.metadatas && cartItem.data.name === shopItem.name) {
        return id
      }
    }
    return null
  }

  function addItem(
    slotId: string | number,
    shopItem: ShopItem,
    qty: number,
    vehicle = { livery: -1, color: 3, liverymod: -1 as number | boolean },
    metadatas?: Record<string, string>
  ): number {
    const existingId = findExistingCartId(shopItem, !!metadatas)

    if (existingId !== null) {
      const existing = items.value.get(existingId)!
      existing.count += qty
      items.value = new Map(items.value)
      animateTotal()
      return existingId
    }

    const id = nextId.value++
    items.value.set(id, {
      cartId: id,
      slotId,
      count: qty,
      data: { ...shopItem },
      vehicle: { ...vehicle },
      metadatas,
    })
    items.value = new Map(items.value)
    animateTotal()
    return id
  }

  function removeItem(cartId: number) {
    items.value.delete(cartId)
    items.value = new Map(items.value)
    animateTotal()
  }

  function updateQty(cartId: number, delta: number) {
    const item = items.value.get(cartId)
    if (!item) return
    const newCount = item.count + delta
    if (newCount <= 0) {
      removeItem(cartId)
      return
    }
    item.count = newCount
    items.value = new Map(items.value)
    animateTotal()
  }

  function clear() {
    items.value = new Map()
    nextId.value = 1
    animatedTotal.value = 0
    cancelAnimationFrame(animFrame)
  }

  function animateTotal() {
    const target = totalPrice.value
    const start = animatedTotal.value
    const diff = target - start
    if (diff === 0) return

    const duration = 300
    const startTime = performance.now()

    cancelAnimationFrame(animFrame)

    function tick(now: number) {
      const elapsed = now - startTime
      const progress = Math.min(elapsed / duration, 1)
      // ease-out cubic
      const eased = 1 - Math.pow(1 - progress, 3)
      animatedTotal.value = Math.round(start + diff * eased)

      if (progress < 1) {
        animFrame = requestAnimationFrame(tick)
      } else {
        animatedTotal.value = target
      }
    }

    animFrame = requestAnimationFrame(tick)
  }

  /** Build the cart object in the format Lua expects */
  function toLuaCart(): Record<number, any> {
    const out: Record<number, any> = {}
    for (const [id, item] of items.value.entries()) {
      out[id] = {
        serialid: { slotid: item.slotId, cartid: id },
        slotid: item.slotId,
        count: item.count,
        data: item.data,
        vehicle: item.vehicle,
        metadatas: item.metadatas || {},
      }
    }
    return out
  }

  return {
    items, animatedTotal, totalPrice, totalCount, cartItems,
    addItem, removeItem, updateQty, clear, toLuaCart,
  }
})
