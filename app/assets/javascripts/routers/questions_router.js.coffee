class WdiBackboneDemo.Routers.Questions extends Backbone.Router
  routes:
    '': 'index'
    'questions/:id': 'show' #http://localhost:5000/#questions/123

  index: ->
    # alert "Index page loaded, now about to render the view template."
    view = new WdiBackboneDemo.Views.QuestionsIndex()
    $('#container').html(view.render().el)

  show: (id) ->
    alert("Your are showing Question #{id}")