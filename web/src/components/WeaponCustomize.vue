<script setup lang="ts">
import { ref, onMounted } from 'vue'
import { useShopStore } from '../stores/shop'
import { useConfigStore } from '../stores/config'
import { useCart } from '../composables/useCart'
import { nuiCallback } from '../utils/callback'
import { getItemImageSrc } from '../utils/getImageSrc'
import type { WeaponAttachment } from '../types/shop'

const props = defineProps<{
  itemIndex: string | number
  itemName: string
}>()

const emit = defineEmits<{ close: [] }>()

const shop = useShopStore()
const config = useConfigStore()
const { addToCart } = useCart()

const attachments = ref<WeaponAttachment[]>([])
const selected = ref<Set<string>>(new Set())
const qty = ref(1)

onMounted(async () => {
  const result = await nuiCallback<WeaponAttachment[]>('getAttachments', { item: props.itemName })
  if (Array.isArray(result) && result.length > 0) {
    attachments.value = result
  }
})

function toggleAttachment(name: string) {
  if (selected.value.has(name)) {
    selected.value.delete(name)
  } else {
    selected.value.add(name)
  }
  selected.value = new Set(selected.value)
}

async function submit() {
  const item = shop.itemMap[props.itemIndex]
  if (!item) return

  // Build metadatas from selected attachments
  const metadatas: Record<string, string> = {}
  for (const att of attachments.value) {
    if (selected.value.has(att.name)) {
      metadatas[att.name] = att.name
    }
  }

  // Add weapon to cart
  await addToCart(props.itemIndex, item, qty.value, Object.keys(metadatas).length > 0 ? metadatas : undefined)

  // Add each selected attachment as separate cart item
  for (const att of attachments.value) {
    if (selected.value.has(att.name)) {
      // Find attachment in shop items
      for (const [idx, shopItem] of Object.entries(shop.itemMap)) {
        if (shopItem.name === att.name) {
          await addToCart(idx, shopItem, qty.value)
          break
        }
      }
    }
  }

  emit('close')
}
</script>

<template>
  <div class="weapon-modal-overlay" @click.self="emit('close')">
    <div class="weapon-modal">
      <div class="modal-header">
        <h3>Customize Weapon</h3>
        <button class="modal-close" @click="emit('close')">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
            <line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/>
          </svg>
        </button>
      </div>

      <div class="modal-body">
        <div class="weapon-preview">
          <img :src="getItemImageSrc(itemName, config.imgpath)" :alt="itemName" />
        </div>

        <div class="attachments-list" v-if="attachments.length > 0">
          <label
            v-for="att in attachments"
            :key="att.name"
            class="attachment-item"
            :class="{ checked: selected.has(att.name) }"
          >
            <input
              type="checkbox"
              :checked="selected.has(att.name)"
              @change="toggleAttachment(att.name)"
            />
            <span class="check-icon">
              <svg v-if="selected.has(att.name)" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3">
                <polyline points="20,6 9,17 4,12"/>
              </svg>
            </span>
            <span class="att-label">{{ att.label }}</span>
          </label>
        </div>

        <div class="modal-footer">
          <div class="qty-row">
            <label>Qty:</label>
            <input type="number" v-model.number="qty" min="1" max="10" class="qty-input" />
          </div>
          <button class="submit-btn" @click="submit">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
              <circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/>
              <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/>
            </svg>
            Add to Cart
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.weapon-modal-overlay {
  position: fixed;
  inset: 0;
  background: rgba(0, 0, 0, 0.5);
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 100;
}

.weapon-modal {
  background: linear-gradient(135deg, #2c2f33 0%, #23272a 100%);
  border: 1px solid rgba(139, 71, 137, 0.4);
  border-radius: 12px;
  width: 380px;
  max-height: 70vh;
  display: flex;
  flex-direction: column;
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
}

.modal-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 16px 20px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.06);
}

.modal-header h3 {
  font-size: 15px;
  font-weight: 600;
  color: #e0e0e0;
}

.modal-close {
  width: 28px;
  height: 28px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(255, 88, 88, 0.1);
  border: none;
  border-radius: 6px;
  color: #ff5858;
  cursor: pointer;
  transition: background 0.15s;
}
.modal-close:hover {
  background: rgba(255, 88, 88, 0.3);
}

.modal-body {
  padding: 16px 20px;
  overflow-y: auto;
}

.weapon-preview {
  display: flex;
  justify-content: center;
  padding: 12px;
  margin-bottom: 16px;
}
.weapon-preview img {
  max-height: 80px;
  max-width: 100%;
  object-fit: contain;
}

.attachments-list {
  display: flex;
  flex-direction: column;
  gap: 4px;
}

.attachment-item {
  display: flex;
  align-items: center;
  gap: 8px;
  padding: 10px 12px;
  border: 1px solid rgba(255, 255, 255, 0.06);
  border-radius: 8px;
  cursor: pointer;
  transition: all 0.15s;
}
.attachment-item:hover {
  background: rgba(255, 255, 255, 0.04);
}
.attachment-item.checked {
  background: rgba(139, 71, 137, 0.15);
  border-color: rgba(139, 71, 137, 0.4);
}

.attachment-item input {
  display: none;
}

.check-icon {
  width: 20px;
  height: 20px;
  display: flex;
  align-items: center;
  justify-content: center;
  border: 2px solid rgba(255, 255, 255, 0.2);
  border-radius: 4px;
  flex-shrink: 0;
}
.attachment-item.checked .check-icon {
  background: rgba(139, 71, 137, 0.6);
  border-color: #b57bb3;
  color: #fff;
}

.att-label {
  font-size: 12px;
  color: #e0e0e0;
}

.modal-footer {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 16px;
  padding-top: 12px;
  border-top: 1px solid rgba(255, 255, 255, 0.06);
}

.qty-row {
  display: flex;
  align-items: center;
  gap: 6px;
  color: rgba(255, 255, 255, 0.5);
  font-size: 12px;
}

.qty-input {
  width: 48px;
  height: 30px;
  text-align: center;
  background: rgba(62, 66, 70, 0.8);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 6px;
  color: #fff;
  font-size: 12px;
}

.submit-btn {
  display: flex;
  align-items: center;
  gap: 6px;
  padding: 8px 16px;
  background: linear-gradient(135deg, #6b3569, #8b4789);
  border: none;
  border-radius: 8px;
  color: #e8d0e7;
  font-size: 12px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.2s;
}
.submit-btn:hover {
  background: linear-gradient(135deg, #8b4789, #ab67a9);
  box-shadow: 0 0 12px rgba(139, 71, 137, 0.4);
}
</style>
