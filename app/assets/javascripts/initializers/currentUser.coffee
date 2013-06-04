Ember.Application.initializer
  name: 'currentUser'

  initialize: (container) ->
    store = container.lookup('store:main')
    attributes = $('meta[name="current-user"]').attr('content')

    if attributes == "loggedin"
      controller = container.lookup('controller:currentUser').set('content')
      container.typeInjection('controller', 'currentUser', 'controller:currentUser')
