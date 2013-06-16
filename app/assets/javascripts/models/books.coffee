App.Book = DS.Model.extend
  title: DS.attr('string')
  summary: DS.attr('string')
  buylink: DS.attr('string')
  context: DS.attr('string')
  image: DS.attr('string')
  imageThumbUrl: DS.attr('string')
  imageMediumUrl: DS.attr('string')
  imageLargeUrl: DS.attr('string')
  createdAt: DS.attr('date')

