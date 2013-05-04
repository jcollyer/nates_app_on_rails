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


  $ ->
  $(document).on "click", ".play_button",  ->
    audioPlayer = $("#lesson_mod_menu")
    console.log audioPlayer
    audioPlayer.css display: 'block'
    $button = $(this)
    mediaPath =  $button.text()
    window.player = $("#jquery_jplayer_1").jPlayer
      swfPath: "http://jplayer.org/latest/js"
      supplied: "mp3, oga"
      ready: ->
        player.bind $.jPlayer.event.play, ->
          console.log "play event"
          $button.removeClass "paused"
        player.bind $.jPlayer.event.pause, ->
          console.log "pause event"
          $button.addClass "paused"

    if $button.data("state") == "playing"
      console.log "clicked pause"
      player.jPlayer "pause"
      $button.data "state", "paused"
    else
      console.log "clicked play"
      player.jPlayer "setMedia", {
        mp3: mediaPath
      }
      player.jPlayer "play"
      $button.data "state", "playing"
      $button.removeClass "paused"