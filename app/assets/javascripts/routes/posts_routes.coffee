App.PostShowRoute = Em.Route.extend
  model: ->
    App.Post.find(params.post_id)
