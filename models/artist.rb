require_relative('../db/sql_runner.rb')
require_relative('album.rb')

class Artist
  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end


  def save()
    sql = "INSERT INTO artists (name)
    VALUES ($1) RETURNING id"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM artists"
    results = SqlRunner.run(sql)
    return results.map { |artist| Artist.new(artist)}
  end

  def albums() # lists all albums by selected artist
    sql = "SELECT * FROM albums WHERE id = $1"
    values = [@id]
    albums = SqlRunner.run(sql, values)
    result = albums.map { |album| Album.new(album)}
    return result
  end
  
  def update()
    sql = "UPDATE artists SET name = $1 WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM artists WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)[0]
    return Artist.new(result)
  end


end
