<template>
  <nav>
    <router-link
        class="text-xl border border-black w-1/12 mx-auto block transform transition-all hover:bg-gray-200 hover:scale-125"
        to="/">Home
    </router-link>
  </nav>
  <router-view/>
</template>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}
</style>
