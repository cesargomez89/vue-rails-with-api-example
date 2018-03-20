<template lang='pug'>
  #app
    .header
      b-navbar(toggleable="md" type="dark" variant="info")
        b-navbar-toggle(target="nav_collapse")
        b-navbar-brand(href="#") NavBar
        b-collapse(is-nav id="nav_collapse")
</template>

<script>
export default {
  components: {}
}
</script>

<style scoped lang='scss'>
@import '../../node_modules/bootstrap/scss/bootstrap.scss';
@import '../../node_modules/bootstrap-vue/dist/bootstrap-vue.css';
</style>
