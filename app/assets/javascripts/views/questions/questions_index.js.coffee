class WdiBackboneDemo.Views.QuestionsIndex extends Backbone.View

  #el: 'empty div for now, but will represent some element'

  # initialize is needed because page loads too fast to render collection the first time
  initialize: ->
    @collection.on('reset', @render, this)

  template: JST['questions/index']

  render: ->
    $(@el).html(@template(questions: @collection))
    this #this
