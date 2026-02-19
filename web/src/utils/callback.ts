import { RESOURCE_NAME, IS_DEV } from './constants'

export async function nuiCallback<T = any>(action: string, data?: Record<string, any>): Promise<T> {
  if (IS_DEV) {
    console.log('[DEV] NUI callback:', action, data)
    return {} as T
  }

  const resp = await fetch(`https://${RESOURCE_NAME}/shop:callback`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ action, ...data }),
  })
  return resp.json()
}
