App.LessonsIndexController = Em.ArrayController.extend
  sortProperties: ['title']
  sortAscending: true

  destroy: ->
    console.log @content
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'lessons.index'
