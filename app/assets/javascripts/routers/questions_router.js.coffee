class WdiBackboneDemo.Routers.Questions extends Backbone.Router
  routes:
    '': 'index'
    'questions/:id': 'show' #http://localhost:5000/#questions/123

  initialize: ->
    @collection = new WdiBackboneDemo.Collections.Questions()
    @collection.fetch(reset: true) #updates the collection with the output from the api call




  index: ->
    # alert "Index page loaded, now about to render the view template."
    view = new WdiBackboneDemo.Views.QuestionsIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert("Your are showing Project #{id}")