<template>
  <div class="pi"> <Nav/>
  </div>
</template>

<script>
// @ is an alias to /src 
import Nav from "@/components/nav.vue";

export default {
  name: "Help", 
  components: {
    Nav,}
};
</script>

<style scoped>
.pi {
  background-image: url("../assets/help.svg");
  width: 100%;
  height: 100vh;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover; 
}
</style>