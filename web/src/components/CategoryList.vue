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
.category-bar {
  display: flex;
  gap: 6px;
  padding: 8px 12px;
  background: linear-gradient(135deg, #1e1e24 0%, #252530 100%);
  border: 1px solid rgba(139, 71, 137, 0.2);
  border-radius: 10px;
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
  gap: 6px;
  padding: 8px 14px;
  background: rgba(255, 255, 255, 0.04);
  border: 1px solid rgba(255, 255, 255, 0.06);
  border-radius: 8px;
  color: rgba(255, 255, 255, 0.55);
  font-size: 12px;
  font-weight: 500;
  white-space: nowrap;
  cursor: pointer;
  transition: all 0.2s;
}

.cat-tab:hover {
  background: rgba(139, 71, 137, 0.12);
  color: rgba(255, 255, 255, 0.8);
  border-color: rgba(139, 71, 137, 0.3);
}

.cat-tab.active {
  background: rgba(139, 71, 137, 0.25);
  border-color: rgba(139, 71, 137, 0.5);
  color: #e0b8de;
  font-weight: 600;
}
</style>
