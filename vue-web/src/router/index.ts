import { createRouter, createWebHistory } from 'vue-router'
import BillList from "@/views/BillList.vue";

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'bill-index',
      component: BillList,
    },
  ],
});

export default router;
