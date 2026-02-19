export const IS_DEV = import.meta.env.DEV

export const RESOURCE_NAME = (window as any).GetParentResourceName?.() ?? 'renzu_shops'

export const DEFAULT_IMG_PATH = `nui://ox_inventory/web/images/`

export const VEHICLE_IMG_BASE = 'https://raw.githubusercontent.com/renzuzu/carmap/main/carmap/vehicle/'

export const VEHICLE_FALLBACK_IMG = "data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='64' height='64' viewBox='0 0 24 24' fill='none' stroke='%237a7a7a' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpath d='M5 17h14v-5l-2-5H7L5 12z'/%3E%3Ccircle cx='7.5' cy='17.5' r='1.5'/%3E%3Ccircle cx='16.5' cy='17.5' r='1.5'/%3E%3C/svg%3E"

// Inline SVG data URI — always works in NUI without external requests
export const ITEM_FALLBACK_IMG = "data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='64' height='64' viewBox='0 0 24 24' fill='none' stroke='%237a7a7a' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpath d='M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z'/%3E%3Cpolyline points='3.27 6.96 12 12.01 20.73 6.96'/%3E%3Cline x1='12' y1='22.08' x2='12' y2='12'/%3E%3C/svg%3E"

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
