<script setup lang="ts">
import { RouterView } from 'vue-router';
import HeaderAndFooter from "@/views/layouts/HeaderAndFooter.vue";
import BillList from "@/views/BillList.vue";
</script>

<template>
  <HeaderAndFooter>
    <RouterView />
  </HeaderAndFooter>
</template>
