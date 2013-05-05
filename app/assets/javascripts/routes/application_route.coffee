App.Router.map ->
  @resource "home", path: '/'
  @resource "about"
  @resource "lessons", ->
    @route "new"
    @route "edit",
      path: "/:lesson_id/edit"
    @route "show",
      path: "/:lesson_id"

App.HomeRoute = Ember.Route.extend
  model: ->
    App.Lesson.find()

