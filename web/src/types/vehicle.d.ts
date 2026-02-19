export interface VehicleViewData {
  livery: Record<number, string>
  color: number
  liverymod: number | boolean
}

export interface VehicleStats {
  label: string
  topspeed: number
  acceleration: number
  traction: number
  brakes: number
}

export interface VehicleColor {
  id: number
  cssClass: string
}
