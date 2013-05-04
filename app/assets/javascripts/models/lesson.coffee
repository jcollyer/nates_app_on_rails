App.Lesson = DS.Model.extend
  title: DS.attr('string')
  summary: DS.attr('string')
  imageUrl: DS.attr('string')
  createdAt: DS.attr('date')
  mp3: DS.attr('string')
