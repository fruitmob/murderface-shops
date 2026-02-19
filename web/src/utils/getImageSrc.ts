import { VEHICLE_IMG_BASE, VEHICLE_FALLBACK_IMG, ITEM_FALLBACK_IMG } from './constants'

export function getItemImageSrc(
  name: string,
  imgpath: string,
  metadata?: { image?: string }
): string {
  const imgName = metadata?.image || name
  return `${imgpath}${imgName}.png`
}

export function getVehicleImageSrc(
  name: string,
  hash?: number,
  vImageCreator?: Record<number, string>
): string {
  if (vImageCreator && hash && vImageCreator[hash]) {
    return vImageCreator[hash]
  }
  return `${VEHICLE_IMG_BASE}${name}.jpg`
}

export function getItemFallback(isVehicle: boolean): string {
  return isVehicle ? VEHICLE_FALLBACK_IMG : ITEM_FALLBACK_IMG
}
