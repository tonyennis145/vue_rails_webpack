<template>
  <div id="app">
    <p>{{ message }}</p>
  </div>
</template>

<script>
module.exports = {
  data: function () {
    return {
      message: "Hillo Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 3em;
  text-align: center;
}
</style>
