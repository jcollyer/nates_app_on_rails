App.BooksShowController = Em.ObjectController.extend

  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'books.index'
