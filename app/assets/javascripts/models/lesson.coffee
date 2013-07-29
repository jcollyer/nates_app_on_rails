App.Lesson = DS.Model.extend
  title: DS.attr('string')
  summary: DS.attr('string')
  position: DS.attr('number')
  image: DS.attr('string')
  imageThumbUrl: DS.attr('string')
  imageMediumUrl: DS.attr('string')
  imageLargeUrl: DS.attr('string')
  mp3: DS.attr('string')
  refurl: DS.attr('string')
  biblebook: DS.belongsTo('App.Biblebook')
  createdAt: DS.attr('date')

  # sortedItems: (->
  #   lessons = @get('lessons').toArray()
  #   lessons.sort (lhs, rhs) ->
  #     lhs.get('title') - rhs.get('title')
  # ).property('lessons.@each.isLoaded')
