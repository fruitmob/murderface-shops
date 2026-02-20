export function formatPrice(value: number | string): string {
  const num = typeof value === 'string' ? parseFloat(value.replace(/,/g, '')) : value
  if (isNaN(num)) return '$0'
  return '$' + num.toLocaleString('en-US', {
    minimumFractionDigits: 0,
    maximumFractionDigits: 0,
  })
}

export function parsePrice(value: string | number): number {
  if (typeof value === 'number') return value
  return parseFloat(value.replace(/[^0-9.-]/g, '')) || 0
}
