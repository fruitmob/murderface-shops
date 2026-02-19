export interface ShopItem {
  name: string
  label: string
  price: number
  stock?: number
  category?: string
  hash?: number
  disable?: boolean
  metadata?: {
    label?: string
    image?: string
    name?: string
    [key: string]: any
  }
  component?: Record<string, any>
  customise?: string[]
}

export interface ShopData {
  duty?: boolean
  vImageCreator?: Record<number, string>
  imgpath: string
  itemtype?: boolean
  moneytype: string
  type: string
  open: boolean
  shop: {
    inventory: ShopItem[]
    label?: string
    name?: string
    StoreName?: string
    moneytype?: string
    AttachmentsCustomiseOnly?: boolean
    [key: string]: any
  }
  label: string
  wallet: WalletData
}

export interface WalletData {
  money: string
  black_money: string
  bank: string
}

export interface Category {
  name: string
  image: string
  icon?: string
}

export interface WeaponAttachment {
  name: string
  label: string
}
