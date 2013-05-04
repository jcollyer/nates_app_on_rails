
App.LessonsIndexRoute = Ember.Route.extend
  model: ->
    App.Lesson.find()

App.LessonsShowRoute = Ember.Route.extend
	model: (params) ->
		App.Lesson.find(params.lesson_id)

App.LessonsNewRoute = Em.Route.extend
  model: ->
    App.Lesson.createRecord()
  setupController: (controller, model) ->
    @_super()
    controller.set('content', model)
