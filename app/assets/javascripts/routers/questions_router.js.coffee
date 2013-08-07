class WdiBackboneDemo.Routers.Questions extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    alert "You are in the index action."