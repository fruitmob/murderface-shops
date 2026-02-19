import { defineStore } from 'pinia'
import { ref } from 'vue'
import { DEFAULT_IMG_PATH } from '../utils/constants'

export const useConfigStore = defineStore('config', () => {
  const imgpath = ref(DEFAULT_IMG_PATH)
  const itemtype = ref(false)
  const vImageCreator = ref<Record<number, string>>({})

  function setConfig(data: {
    imgpath?: string
    itemtype?: boolean
    vImageCreator?: Record<number, string>
  }) {
    if (data.imgpath) imgpath.value = data.imgpath
    if (data.itemtype !== undefined) itemtype.value = data.itemtype
    if (data.vImageCreator) vImageCreator.value = data.vImageCreator
  }

  return { imgpath, itemtype, vImageCreator, setConfig }
})
