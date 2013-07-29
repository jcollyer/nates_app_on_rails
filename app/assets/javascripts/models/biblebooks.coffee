App.Biblebook = DS.Model.extend
  name: DS.attr('string')
  image: DS.attr('string')
  position: DS.attr('number')
  imageThumbUrl: DS.attr('string')
  imageMediumUrl: DS.attr('string')
  imageLargeUrl: DS.attr('string')
  lessons: DS.hasMany('App.Lesson')
  createdAt: DS.attr('date')

