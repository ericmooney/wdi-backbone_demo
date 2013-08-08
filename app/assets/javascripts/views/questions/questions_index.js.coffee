class WdiBackboneDemo.Views.QuestionsIndex extends Backbone.View

  #el: 'empty div for now, but will represent some element'

  # initialize is needed because page loads too fast to render collection the first time
  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendQuestion, this)

  events:
    'submit #new_question': 'createQuestion'

  template: JST['questions/index']

  render: ->
    $(@el).html(@template())
    @collection.each(@appendQuestion)
    this

  appendQuestion: (question) ->
    view = new WdiBackboneDemo.Views.QuestionsShow(model: question)
    $('#questions_list').append(view.render().el)

  createQuestion: (event) ->
    event.preventDefault()
    @collection.create(content: $('#question_content').val())
    $('#new_question')[0].reset() # or, we could have done $('#question_content').val("")

