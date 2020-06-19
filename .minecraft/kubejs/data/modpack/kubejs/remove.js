server.logRemovedRecipes = true

events.listen('server.datapack.recipes', function (event) {
  event.remove({mod: 'bonsaitrees2'})
  event.remove({mod: 'tombstone'})
})
