class WdiBackboneDemo.Routers.Questions extends Backbone.Router
  routes:
    '': 'index'
    'questions/:id': 'show' #http://localhost:5000/#questions/123

  index: ->
    alert "You are in the index action."

  show: (id) ->
    alert("Your are showing Question #{id}")