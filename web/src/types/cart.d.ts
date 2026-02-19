import type { ShopItem } from './shop'

export interface CartItem {
  cartId: number
  slotId: string | number
  count: number
  data: ShopItem
  vehicle: {
    livery: number
    color: number
    liverymod: number | boolean
  }
  metadatas?: Record<string, string>
}

export type PaymentMethod = 'money' | 'bank' | 'finance'
