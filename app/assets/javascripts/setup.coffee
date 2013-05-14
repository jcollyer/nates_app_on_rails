window.App = Ember.Application.create()

App.Store = DS.Store.extend
	revision: 11

DS.RESTAdapter.reopen
  namespace: 'api'


App.file = Ember.View.extend
  tagName: 'input'
  attributeBindings: ['type', 'id']
  type: 'file'

  change: (e)->
    view = this
    reader = new FileReader()
    reader.onload = (e)->
      view.set('file', e.target.result)
    reader.readAsText(e.target.files[0])
