import { nuiCallback } from '../utils/callback'

export function useSound() {
  function playSound(sound: 'open' | 'add' | 'buy' | 'error') {
    nuiCallback('playSound', { sound })
  }

  return { playSound }
}
