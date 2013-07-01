Handlebars.registerHelper 'link', (context)->
  thisThing = this
  thisId = thisThing.id
  thisTitle = thisThing.get("title")
  console.log thisTitle
  result = '<a href="/#/lessons/' + thisId + '">' + thisTitle + '</a>'
  new Handlebars.SafeString(result)

