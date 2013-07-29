App.Biblebook = DS.Model.extend
  name: DS.attr('string')
  position: DS.attr('number')
  image: DS.attr('string')
  imageThumbUrl: DS.attr('string')
  imageMediumUrl: DS.attr('string')
  imageLargeUrl: DS.attr('string')
  lessons: DS.hasMany('App.Lesson')
  createdAt: DS.attr('date')

