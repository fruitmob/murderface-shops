export const IS_DEV = import.meta.env.DEV

export const RESOURCE_NAME = (window as any).GetParentResourceName?.() ?? 'renzu_shops'

export const DEFAULT_IMG_PATH = `nui://ox_inventory/web/images/`

export const VEHICLE_IMG_BASE = 'https://raw.githubusercontent.com/renzuzu/carmap/main/carmap/vehicle/'

export const VEHICLE_FALLBACK_IMG = 'https://www.freeiconspng.com/uploads/vehicle-icon-png-car-sedan-4.png'

export const ITEM_FALLBACK_IMG = 'https://westerrands.websites.co.in/e-store/img/defaults/product-default.png'

export const CATEGORY_ICONS: Record<string, string> = {
  Food: 'mdi:food-drumstick',
  Drinks: 'mdi:cup',
  Alcohol: 'mdi:glass-wine',
  Weapons: 'mdi:pistol',
  Ammo: 'mdi:ammunition',
  Tools: 'mdi:wrench',
  Electronics: 'mdi:cellphone',
  Medical: 'mdi:medical-bag',
  Clothing: 'mdi:tshirt-crew',
  Vehicles: 'mdi:car-sports',
  Attachments: 'mdi:puzzle',
  General: 'mdi:package-variant',
  attachments: 'mdi:puzzle',
}

export const VEHICLE_COLORS: Array<{ id: number; css: string; label: string }> = [
  { id: 64,  css: '#3B69C6', label: 'Blue' },
  { id: 59,  css: '#4CAF50', label: 'Green' },
  { id: 89,  css: '#FF9800', label: 'Orange' },
  { id: 29,  css: '#F44336', label: 'Red' },
  { id: 112, css: '#E0E0E0', label: 'Silver' },
  { id: 3,   css: '#212121', label: 'Black' },
  { id: 68,  css: '#00BCD4', label: 'Cyan' },
  { id: 111, css: '#FFFFFF', label: 'White' },
  { id: 8,   css: '#757575', label: 'Grey' },
]
