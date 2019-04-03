require('pry-byebug')
require_relative('models/artist.rb')
require_relative('models/album.rb')

artist1 = Artist.new({
  'name' => 'Lighthouse Family'
  })

  artist1.save()

artist2 = Artist.new({
  'name' => 'Bloc Party'
  })

  artist2.save()

artist3 = Artist.new({
  'name' => 'Foo Fighters'
  })

  artist3.save()



album1 = Album.new({
  'title' => 'Ocean Drive',
  'genre' => 'Easy Listening',
  'artist_id' => "#{artist1.id}"
  })

  album1.save()

album2 = Album.new({
  'title' => 'Postcards From Heaven',
  'genre' => 'Easy Listening',
  'artist_id' => "#{artist1.id}"
  })

  album2.save()

album3 = Album.new({
  'title' => 'Silent Alarm',
  'genre' => 'Indie-Rock',
  'artist_id' => "#{artist2.id}"
  })

  album3.save()

album4 = Album.new({
  'title' => 'The Colour And The Shape',
  'genre' => 'Rock',
  'artist_id' => "#{artist3.id}"
  })

  album4.save()

artist1.name = "The Lighthouse Family"
artist1.update

album4.title = "There Is Nothing Left To Lose"
album4.update

binding.pry

nil
