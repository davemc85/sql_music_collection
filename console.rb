require('pry-byebug')
require_relative('models/artist.rb')
require_relative('models/album.rb')

artist1 = Artist.new({
  'name' => 'Lighthouse Family'
  })

  artist1.save()

album1 = Album.new({
  'title' => 'Ocean Drive',
  'genre' => 'Easy Listening',
  'artist_id' => "#{artist1.id}"
  })

  album1.save()
