import { defineStore } from 'pinia'
import { ref, computed } from 'vue'
import type { ShopItem, ShopData, WalletData, Category } from '../types/shop'
import type { VehicleStats, VehicleViewData } from '../types/vehicle'
import { CATEGORY_ICONS } from '../utils/constants'

export const useShopStore = defineStore('shop', () => {
  const isOpen = ref(false)
  const shopLabel = ref('')
  const shopType = ref('')
  const moneyType = ref('money')
  const wallet = ref<WalletData>({ money: '0', black_money: '0', bank: '0' })
  const items = ref<ShopItem[]>([])
  const itemMap = ref<Record<string | number, ShopItem>>({})
  const duty = ref(false)
  const activeCategory = ref<string | null>(null)

  // Vehicle state
  const vehicleStats = ref<VehicleStats | null>(null)
  const vehicleViewData = ref<VehicleViewData | null>(null)
  const currentVehicle = ref<string | null>(null)

  const isVehicleShop = computed(() => shopType.value === 'VehicleShop')
  const isWeaponShop = computed(() =>
    shopType.value === 'Ammunation' || shopType.value === 'BlackMarketArms'
  )

  const categories = computed<Category[]>(() => {
    const catMap = new Map<string, string>()
    for (const item of items.value) {
      if (item.category && !item.disable && !catMap.has(item.category)) {
        const imgName = item.metadata?.image || item.name
        catMap.set(item.category, imgName)
      }
    }
    return Array.from(catMap.entries()).map(([name, image]) => ({
      name,
      image,
      icon: CATEGORY_ICONS[name] || 'mdi:tag',
    }))
  })

  const filteredItems = computed(() => {
    return items.value.filter((item) => {
      if (item.disable) return false
      if (activeCategory.value && item.category !== activeCategory.value) return false
      return true
    })
  })

  function openShop(data: ShopData) {
    shopLabel.value = data.label || data.shop?.label || data.shop?.name || 'Shop'
    shopType.value = data.type || ''
    moneyType.value = data.moneytype || 'money'
    wallet.value = data.wallet
    duty.value = data.duty ?? false
    activeCategory.value = null
    vehicleStats.value = null
    vehicleViewData.value = null
    currentVehicle.value = null

    const inv = data.shop?.inventory || []
    items.value = inv
    itemMap.value = {}
    for (let i = 0; i < inv.length; i++) {
      itemMap.value[i] = inv[i]
    }

    isOpen.value = true
  }

  function closeShop() {
    isOpen.value = false
    vehicleStats.value = null
    vehicleViewData.value = null
    currentVehicle.value = null
  }

  function setCategory(cat: string | null) {
    activeCategory.value = cat
  }

  function setVehicleStats(stats: VehicleStats | null) {
    vehicleStats.value = stats
  }

  function setVehicleView(data: VehicleViewData | null) {
    vehicleViewData.value = data
  }

  function setCurrentVehicle(model: string | null) {
    currentVehicle.value = model
  }

  return {
    isOpen, shopLabel, shopType, moneyType, wallet, items, itemMap, duty,
    activeCategory, vehicleStats, vehicleViewData, currentVehicle,
    isVehicleShop, isWeaponShop, categories, filteredItems,
    openShop, closeShop, setCategory, setVehicleStats, setVehicleView, setCurrentVehicle,
  }
})
