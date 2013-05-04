App.Store = DS.Store.extend
  revision: 11
  adapter: 'DS.FixtureAdapter'

App.Lesson = DS.Model.extend
  title: DS.attr('string')
  summary: DS.attr('string')
  imageUrl: DS.attr('string')
  createdAt: DS.attr('date')
  mp3: DS.attr('string')


App.Lesson.FIXTURES = [
  {
    id: 1
    title: "Crying out to God"
    summary: "A studie in psalms of King David seeking God."
    imageUrl: "/assets/crying_out_to_god.jpg"
    createdAt: new Date('12-22-2012')
    mp3: "/assets/mp3/1.mp3"
  }
  {
    id: 2
    title: "Into the belly of the whale"
    summary: "A studie in psalms of King David seeking God."
    imageUrl: "/assets/crying_out_to_god.jpg"
    createdAt: new Date('12-22-2012')
    mp3: "/assets/1.mp3"
  }
  {
    id: 3
    title: "Jeremiah gets down"
    summary: "A studie in psalms of King David seeking God."
    imageUrl: "/assets/crying_out_to_god.jpg"
    createdAt: new Date('12-22-2012')
    mp3: "/assets/1.mp3"
  }
  {
    id: 4
    title: "Crying out to God"
    summary: "A studie in psalms of King David seeking God."
    imageUrl: "/assets/crying_out_to_god.jpg"
    createdAt: new Date('12-22-2012')
    mp3: "/assets/1.mp3"
  }
  {
    id: 5
    title: "Crying out to God"
    summary: "A studie in psalms of King David seeking God."
    imageUrl: "/assets/crying_out_to_god.jpg"
    createdAt: new Date('12-22-2012')
    mp3: "/assets/1.mp3"
  }
  {
    id: 6
    title: "Crying out to God"
    summary: "A studie in psalms of King David seeking God."
    imageUrl: "/assets/crying_out_to_god.jpg"
    createdAt: new Date('12-22-2012')
    mp3: "/assets/1.mp3"
  }
  {
    id: 7
    title: "Crying out to God"
    summary: "A studie in psalms of King David seeking God."
    imageUrl: "/assets/crying_out_to_god.jpg"
    createdAt: new Date('12-22-2012')
    mp3: "/assets/1.mp3"
  }
  {
    id: 8
    title: "Crying out to God"
    summary: "A studie in psalms of King David seeking God."
    imageUrl: "/assets/crying_out_to_god.jpg"
    createdAt: new Date('12-22-2012')
    mp3: "/assets/1.mp3"
  }
]