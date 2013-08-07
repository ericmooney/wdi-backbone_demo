class WdiBackboneDemo.Views.QuestionsIndex extends Backbone.View

  #el: 'empty div for now, but will represent some element'

  template: JST['questions/index']

  render: ->
    $(@el).html(@template(questions: "Look at all the Questions!"))
    this #this
