class WdiBackboneDemo.Views.QuestionsIndex extends Backbone.View

  template: JST['questions/index']

  render: ->
    $(@el).html(@template())
    this
