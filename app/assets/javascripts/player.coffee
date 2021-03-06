$ ->
  $(document).on "click", ".play_button",  ->
    audioPlayer = $("#lesson_mod_menu")
    $(".container").css "margin-bottom", "100px"
    if $(window).width() < 768
      $(".container").css "margin-bottom", "170px"
    audioPlayer.fadeIn()
    $button = $(this)
    thisParent = $button.parent()
    mediaPath =  $button.find(".play_this_lesson_mp3").text()

    titlePath = $button.find(".play_this_lesson_title").text()
    refurlPath = $button.find(".play_this_lesson_refurl").text()
    imagePath = thisParent.find(".play_this_lesson_image").attr('src')
    downloadMp3 = mediaPath
    $("#player_download_url").attr("href", downloadMp3).attr("download", titlePath)
    # console.log refurlPath
    $(".lesson_mod_info").empty()
    $(".lesson_mod_info").prepend("<h1 class='teaching_title'> "+titlePath+" </h1> ")
    $(".mod_img").attr("src", imagePath)
    $(".player_download_url").attr("src")
    $(".player_download_url").attr("src", mediaPath)
    $(".player_refurl").attr("href")
    $(".player_refurl").attr("href", refurlPath)
    window.player = $("#jquery_jplayer_1").jPlayer
      swfPath: "http://www.jplayer.org/latest/js/Jplayer.swf"
      supplied: "mp3"
      solution: "html, flash"
      volume: 0.8
      wmode: "window"
      errorAlerts: false
      warningAlerts: false
      ready: ->
        player.bind $.jPlayer.event.play, ->
        # console.log "play event"
          $button.removeClass "paused"
        player.bind $.jPlayer.event.pause, ->
        # console.log "pause event"
          $button.addClass "paused"

    if $button.data("state") == "playing"
    # console.log "clicked pause"
      player.jPlayer "pause"
      $button.data "state", "paused"
    else
    # console.log "clicked play"
      player.jPlayer "setMedia", {
        mp3: mediaPath
        oga: mediaPath
      }
      player.jPlayer "play"
      $button.data "state", "playing"
      $button.removeClass "paused"


  $(document).on "click", ".player_close_button", ->
    $("#lesson_mod_menu").css "display", "none"
    player.jPlayer "pause"
    $(".container").css "margin-bottom", "0px"


  $(document).on "click", ".play_this_teaching", ->
    $(".spin").css "-webkit-animation", "spin 5s infinite"
    $(".spin").css "-moz-animation",    "spin 5s infinite"
    $(".spin").css "-o-animation",      "spin 5s infinite"
    $(".spin").css "animation",         "spin 5s infinite"
    $("#loader").fadeIn()
    window.audioPlayer = $("#lesson_mod_menu")
    $(".container").css "margin-bottom", "100px"
    if $(window).width() < 768
      $(".container").css "margin-bottom", "170px"
    audioPlayer.fadeIn()
    $button = $(this)
    mediaPath =  $button.data("mp3")
    bibleBook = $("#teaching_biblebook").text()
    titlePath = $button.data("title")
    refurlPath = $button.data("refurl")
    imagePath = $(".book_image").attr("src")
    downloadMp3 = mediaPath
    $("#player_download_url").attr("href", downloadMp3).attr("download", titlePath)
    # console.log refurlPath
    # console.log imagePath
    $(".lesson_mod_info").empty()
    $(".lesson_mod_info").prepend("<h1 class='teaching_title'> "+bibleBook+" </h1> <h1 class='teaching_title'><span class='chapter_text'> Chapter</span>"+titlePath+" </h1> ")

    $(".mod_img").attr("src", imagePath)
    $(".player_download_url").attr("src")
    $(".player_download_url").attr("src", mediaPath)
    $(".player_refurl").attr("href")
    $(".player_refurl").attr("href", refurlPath)
    window.player = $("#jquery_jplayer_1").jPlayer
      swfPath: "http://www.jplayer.org/latest/js/Jplayer.swf"
      supplied: "mp3"
      solution: "html, flash"
      volume: 0.8
      wmode: "window"
      smoothPlayBar: false
      errorAlerts: false
      warningAlerts: false
      ready: ->
        player.bind $.jPlayer.event.canplay, ->
          # console.log "ready"
          $(".spin").css "-webkit-animation", "none"
          $(".spin").css "-moz-animation", "none"
          $(".spin").css "-ms-animation", "none"
          $(".spin").css "animation", "none"
          $("#loader").fadeOut()
        player.bind $.jPlayer.event.play, ->
          $button.removeClass "paused"
        player.bind $.jPlayer.event.pause, ->
          $button.addClass "paused"

    if $button.data("state") == "playing"
    # console.log "clicked pause"
      player.jPlayer "pause"
      $button.data "state", "paused"
    else
    # console.log "clicked play"
      player.jPlayer "setMedia", {
        mp3: mediaPath
        oga: mediaPath
      }
      # console.log mediaPath
      player.jPlayer "play"
      $button.data "state", "playing"
      $button.removeClass "paused"

    # myPlaylist = new jPlayerPlaylist
    #   jPlayer: "#jp_audio_0"
    #   cssSelectorAncestor: "#jp_container_1"

  $(document).on "click", ".speed", ->
    $(".speed").removeClass("activeSpeed")
    $(this).addClass("activeSpeed")

  $(document).on "click", ".speed-20", ->
    audioDiv = document.getElementById("jp_audio_0")
    trackSpeed = audioDiv.playbackRate = 2
  $(document).on "click", ".speed-17", ->
    audioDiv = document.getElementById("jp_audio_0")
    trackSpeed = audioDiv.playbackRate = 1.7
  $(document).on "click", ".speed-15", ->
    audioDiv = document.getElementById("jp_audio_0")
    trackSpeed = audioDiv.playbackRate = 1.5
  $(document).on "click", ".speed-13", ->
    audioDiv = document.getElementById("jp_audio_0")
    trackSpeed = audioDiv.playbackRate = 1.3
  $(document).on "click", ".speed-10", ->
    audioDiv = document.getElementById("jp_audio_0")
    trackSpeed = audioDiv.playbackRate = 1.0

  $(document).on "click", ".player_rewind", ->
    audioDiv = document.getElementById("jp_audio_0")
    currentTime = audioDiv.currentTime
    currentTimeRewind = currentTime - 30
    # alert currentTime
    # alert currentTimeRewind
    audioDiv.currentTime = currentTimeRewind


  # Keyboard Control Overides
  $(document.documentElement).keydown (event) ->
    if event.which is 32
      event.preventDefault()
      if $("#jquery_jplayer_1").data("jPlayer").status.paused
        $("#jquery_jplayer_1").jPlayer "play"
      else
        $("#jquery_jplayer_1").jPlayer "pause"


