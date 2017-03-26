<template>
  <div id="app">
    <p>{{ message }}</p>
  </div>
</template>

<script>
module.exports = {
  data: function () {
    return {
      message: "Hello World!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 8em;
}
</style>
