require('pry-byebug')
require_relative('models/artist.rb')
require_relative('models/albums.rb')

artist1 = Artist.new({
  'name' => 'Lighthouse Family'
  })

  artist1.save()
