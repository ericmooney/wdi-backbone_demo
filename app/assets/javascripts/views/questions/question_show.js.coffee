class WdiBackboneDemo.Views.QuestionsShow extends Backbone.View

  template: JST['questions/show']
  tagName: 'li'

  render: ->
    $(@el).html(@template(question: @model))
    this