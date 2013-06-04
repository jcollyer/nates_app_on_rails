App.PostsShowController = Em.ObjectController.extend

  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'posts.index'
