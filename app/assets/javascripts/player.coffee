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
      swfPath: "http://jplayer.org/latest/js"
      supplied: "mp3, oga"
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
      }
      player.jPlayer "play"
      $button.data "state", "playing"
      $button.removeClass "paused"


$ ->
  $(document).on "click", ".player_close_button", ->
    $("#lesson_mod_menu").css "display", "none"
    player.jPlayer "pause"
    $(".container").css "margin-bottom", "0px"

$ ->
  $(document).on "click", ".play_this_teaching", ->
    $(".spin").css "-webkit-animation", "spin 5s infinite"
    $(".spin").css "-moz-animation",    "spin 5s infinite"
    $(".spin").css "-o-animation",      "spin 5s infinite"
    $(".spin").css "animation",         "spin 5s infinite"
    $("#loader").fadeIn()
    audioPlayer = $("#lesson_mod_menu")
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
    $(".lesson_mod_info").prepend("<h1 class='teaching_title'> "+bibleBook+" </h1>  <h1 class='teaching_title'> "+titlePath+" </h1> ")

    $(".mod_img").attr("src", imagePath)
    $(".player_download_url").attr("src")
    $(".player_download_url").attr("src", mediaPath)
    $(".player_refurl").attr("href")
    $(".player_refurl").attr("href", refurlPath)
    window.player = $("#jquery_jplayer_1").jPlayer
      swfPath: "http://jplayer.org/latest/js"
      supplied: "mp3, oga"
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
      }
      player.jPlayer "play"
      $button.data "state", "playing"
      $button.removeClass "paused"


