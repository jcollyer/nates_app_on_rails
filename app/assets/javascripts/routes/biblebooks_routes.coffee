App.BiblebooksIndexRoute = Em.Route.extend
  model: ->
    App.Biblebook.find()

App.BiblebooksShowRoute = Em.Route.extend
  model: (params) ->
    App.Biblebook.find(params.biblebook_id)
  #  App.Lesson.find()

App.BiblebooksNewRoute = Em.Route.extend
  model: ->
    App.Biblebook.createRecord()
  setupController: (controller, model) ->
    @_super()
    controller.set('content', model)

App.BiblebooksEditRoute = Em.Route.extend
  model: (params) ->
    App.Biblebook.find(params.biblebook_id)


