App.BiblebooksEditController = Em.ObjectController.extend
  save: ->
    @store.commit()
    @transitionToRoute 'biblebooks.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'biblebooks.show', @content

  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'biblebooks.index'
