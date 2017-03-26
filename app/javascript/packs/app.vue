
<template lang="haml">

#container
  .mw9.center.ph3-ns.pt6
    .fl.w-100 {{ message }}
    
    .fl.w-100
      %ul
        %li{"v-for" : "record in commits"}
          %div {{record.commit.message}} - {{ record.author.login }}

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

li
  font-size: 1em

</style>