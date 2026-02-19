import type { ShopData } from '../types/shop'

export const mockShopData: ShopData = {
  imgpath: 'nui://ox_inventory/web/images/',
  itemtype: false,
  moneytype: 'money',
  type: 'General',
  open: true,
  label: '24/7 Supermarket',
  wallet: { money: '12,500', black_money: '0', bank: '45,200' },
  shop: {
    label: '24/7 Supermarket',
    inventory: [
      { name: 'burger', label: 'Burger', price: 50, stock: 85, category: 'Food' },
      { name: 'water', label: 'Water Bottle', price: 20, category: 'Drinks' },
      { name: 'cola', label: 'E-Cola', price: 30, stock: 40, category: 'Drinks' },
      { name: 'sandwich', label: 'Sandwich', price: 45, stock: 60, category: 'Food' },
      { name: 'bandage', label: 'Bandage', price: 100, stock: 30, category: 'Medical' },
      { name: 'radio', label: 'Radio', price: 250, stock: 15, category: 'Electronics' },
      { name: 'lockpick', label: 'Lockpick', price: 25, stock: 50, category: 'Tools' },
      { name: 'phone', label: 'Phone', price: 500, stock: 10, category: 'Electronics' },
      { name: 'beer', label: 'Beer', price: 35, stock: 100, category: 'Alcohol' },
      { name: 'whiskey', label: 'Whiskey', price: 120, stock: 25, category: 'Alcohol' },
      { name: 'firstaid', label: 'First Aid Kit', price: 200, stock: 20, category: 'Medical' },
      { name: 'screwdriver', label: 'Screwdriver', price: 75, stock: 40, category: 'Tools' },
    ],
  },
}

export const mockCategories = [
  { name: 'Food', image: 'burger', icon: 'mdi:food-drumstick' },
  { name: 'Drinks', image: 'water', icon: 'mdi:cup' },
  { name: 'Alcohol', image: 'beer', icon: 'mdi:glass-wine' },
  { name: 'Medical', image: 'bandage', icon: 'mdi:medical-bag' },
  { name: 'Electronics', image: 'radio', icon: 'mdi:cellphone' },
  { name: 'Tools', image: 'lockpick', icon: 'mdi:wrench' },
]
