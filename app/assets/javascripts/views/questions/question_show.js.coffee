class WdiBackboneDemo.Views.QuestionsShow extends Backbone.View

  template: JST['questions/show']

  render: ->
    $(@el).html(@template())
    this