App.CurrentUserController = Ember.ObjectController.extend
  isSignedIn: (->
    con = @get('content') != null
    console.log con
    if con == true
      con
    else
      con == null
      alert(33)
      console.log con
  ).property('@content')

