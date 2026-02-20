<script setup lang="ts">
import { ref, nextTick } from 'vue'
import { Icon } from '@iconify/vue'
import { useShopStore } from '../stores/shop'

const shop = useShopStore()
const scrollContainer = ref<HTMLElement>()

async function selectCategory(name: string | null) {
  shop.setCategory(name)
  await nextTick()
  // Scroll selected tab into view
  const active = scrollContainer.value?.querySelector('.cat-tab.active')
  active?.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'center' })
}
</script>

<template>
  <div class="category-bar" ref="scrollContainer">
    <button
      class="cat-tab"
      :class="{ active: shop.activeCategory === null }"
      @click="selectCategory(null)"
    >
      <Icon icon="mdi:store" width="20" />
      <span>All</span>
    </button>
    <button
      v-for="cat in shop.categories"
      :key="cat.name"
      class="cat-tab"
      :class="{ active: shop.activeCategory === cat.name }"
      @click="selectCategory(cat.name)"
    >
      <Icon :icon="cat.icon || 'mdi:tag'" width="20" />
      <span>{{ cat.name }}</span>
    </button>
  </div>
</template>

<style scoped>
/* Phase 3.3 — glass pills with neon active */
.category-bar {
  display: flex;
  gap: 5px;
  padding: 6px 12px;
  background: rgba(255, 255, 255, 0.01);
  border: none;
  border-bottom: 1px solid rgba(255, 255, 255, 0.03);
  border-radius: 0;
  overflow-x: auto;
  flex-shrink: 0;
  scrollbar-width: none;
}

.category-bar::-webkit-scrollbar {
  display: none;
}

.cat-tab {
  display: flex;
  align-items: center;
  gap: 5px;
  padding: 6px 12px;
  background: rgba(255, 255, 255, 0.025);
  border: 1px solid rgba(255, 255, 255, 0.04);
  border-radius: var(--ms-r-sm);
  color: rgba(255, 255, 255, 0.55);
  font-size: 12px;
  font-weight: 500;
  white-space: nowrap;
  cursor: pointer;
  transition: all 0.25s var(--ms-ease);
}

.cat-tab:hover {
  background: rgba(139, 71, 137, 0.1);
  color: rgba(255, 255, 255, 0.85);
  border-color: rgba(139, 71, 137, 0.2);
  transform: translateY(-1px);
}

.cat-tab.active {
  background: var(--ms-accent);
  border-color: var(--ms-accent-border);
  color: #e0b8de;
  font-weight: 600;
  box-shadow: 0 0 14px rgba(139, 71, 137, 0.12),
              inset 0 0 14px rgba(139, 71, 137, 0.04);
}
</style>
