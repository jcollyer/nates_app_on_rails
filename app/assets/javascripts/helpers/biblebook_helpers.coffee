Handlebars.registerHelper 'link', (context)->
  thisThing = this
  thisId = thisThing.id
  thisTitle = thisThing.get("title")
  result = '<a href="/#/lessons/' + thisId + '">' + thisTitle + '</a>'
  result += ''
  new Handlebars.SafeString(result)


