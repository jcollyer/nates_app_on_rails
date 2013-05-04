App.Router.map ->
  @resource "home"
  @resource "about"
  @resource "lessons", { path: "lessons" }
  @resource "lesson_show", { path: "lesson_show/:lesson_id"}


App.LessonsRoute = Ember.Route.extend
  model: ->
    App.Lesson.find()

App.HomeRoute = Ember.Route.extend
  model: ->
    App.Lesson.find()

Ember.Handlebars.registerBoundHelper 'date', (date) ->
  moment(date).fromNow()