App.CurrentUserController = Ember.ObjectController.extend
  isSignedIn: (->
    con = @get('content') != null
    console.log con
    if con == true
      con
    else
      con == null
      console.log con
  ).property('@content')

