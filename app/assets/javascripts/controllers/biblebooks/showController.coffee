App.BiblebooksShowController = Em.ObjectController.extend

  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'biblebooks.index'
