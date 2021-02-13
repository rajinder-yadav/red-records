<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/company-logo.jpg" />
    <Dashboard msg="Welcome to Red Records" />
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Dashboard from "@/components/Dashboard.vue"; // @ is an alias to /src

export default defineComponent({
  name: "Home",
  components: {
    Dashboard
  }
});
</script>
