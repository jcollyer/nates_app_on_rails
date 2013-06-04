App.LessonsShowController = Em.ObjectController.extend

  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'lessons.index'
