
<template lang="haml">

#container
  .mw9.center.ph3-ns.pt6
    .fl.w-100 {{ message }}

    %ul
      %li{"v-for" : "record in commits"}
        .containert {{ record.html_url }}
      kdjflkj

</template>


<script lang="coffee">

apiURL = 'https://api.github.com/repos/vuejs/vue/commits?per_page=3'

module.exports = 

  data: ->
    { 
      message: 'Hello World' 
      commits: []
    }
  
  created: ->
    this.fetchData()
  
  methods: {
    fetchData: ->
      xhr = new XMLHttpRequest()
      self = this
      xhr.open('GET', apiURL)
      xhr.onload = ->
        self.commits = JSON.parse(xhr.responseText)
      xhr.send()

  }


</script>


<style lang="sass">

p 
  font-size: 4em

</style>