window.WdiBackboneDemo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new WdiBackboneDemo.Routers.Questions
    Backbone.history.start()

$(document).ready ->
  WdiBackboneDemo.initialize()
