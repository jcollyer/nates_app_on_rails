Handlebars.registerHelper 'link', (context)->
  thisThing = this
  thisId = thisThing.id
  thisTitle = thisThing.get("title")
  thisMp3 = thisThing.get("mp3")
  thisImage = thisThing.get("imageThumbUrl")
  thisRefurl = thisThing.get("refurl")
  result = '<div class="play_this_teaching_title"><a href="/#/lessons/' + thisId + '">' + thisTitle + '</a></div>'
  result += '<div class="play_this_teaching play_mark_list"
            data-title="'+thisTitle+'"
            data-mp3="'+thisMp3+'"
            data-image="'+thisImage+'"
            data-refurl="'+thisRefurl+'">
            </div>'
  new Handlebars.SafeString(result)


