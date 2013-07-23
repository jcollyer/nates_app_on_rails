App.LessonsIndexController = Em.ArrayController.extend
  destroy: ->
    console.log @content
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'lessons.index'
