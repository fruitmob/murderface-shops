import { onMounted, onUnmounted } from 'vue'
import { useShopStore } from '../stores/shop'
import { useCartStore } from '../stores/cart'
import { useConfigStore } from '../stores/config'
import { nuiCallback } from '../utils/callback'
import { IS_DEV } from '../utils/constants'
import { mockShopData } from '../mock/items'

export function useBridge() {
  const shop = useShopStore()
  const cart = useCartStore()
  const config = useConfigStore()

  function handleMessage(event: MessageEvent) {
    const msg = event.data
    if (!msg) return

    // Shop open/close from Lua SendNUIMessage
    if (msg.type === 'shop' && msg.data) {
      if (msg.data.open) {
        config.setConfig({
          imgpath: msg.data.imgpath,
          itemtype: msg.data.itemtype,
          vImageCreator: msg.data.vImageCreator,
        })
        shop.openShop(msg.data)
      } else {
        shop.closeShop()
      }
    }

    // Vehicle stats
    if (msg.stats !== undefined) {
      shop.setVehicleStats(msg.stats || null)
    }

    // Remove cart item (from Lua)
    if (msg.removecart) {
      cart.removeItem(msg.removecart.cartid)
    }

    // Display buy (vehicle direct purchase from showcase)
    if (msg.displaybuy) {
      cart.clear()
      cart.addItem(1, {
        name: msg.displaybuy.name,
        label: msg.displaybuy.label,
        price: msg.displaybuy.price,
      }, 1)
    }

    // Bubble speech (forwarded to App.vue via custom event)
    if (msg.data?.type === 'bubble' || msg.data?.type === 'bubbleremove') {
      window.dispatchEvent(new CustomEvent('shop:bubble', { detail: msg.data }))
    }
  }

  function closeShop() {
    nuiCallback('closeShop')
    shop.closeShop()
    cart.clear()
  }

  onMounted(() => {
    window.addEventListener('message', handleMessage)

    // ESC key to close
    document.addEventListener('keyup', handleKeyup)

    // Dev mode: auto-open with mock data
    if (IS_DEV) {
      config.setConfig({ imgpath: 'nui://ox_inventory/web/images/' })
      shop.openShop(mockShopData)
    }
  })

  function handleKeyup(e: KeyboardEvent) {
    if (e.key === 'Escape' || e.key === 'F10') {
      closeShop()
    }
  }

  onUnmounted(() => {
    window.removeEventListener('message', handleMessage)
    document.removeEventListener('keyup', handleKeyup)
  })

  return { closeShop }
}
