App.CurrentUserController = Ember.ObjectController.extend
  isSignedIn: (->
    con = @get('content') != null
    if con == true
      con
    else
      con == null
  ).property('@content')

