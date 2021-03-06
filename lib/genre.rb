class Genre
  extend Concerns::Findable
  attr_accessor :name, :songs, :artists

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(genre)
    genre = Genre.new(genre)
    genre.save
    genre
  end

  # return a collection of artists for all of the genre's songs
  # do not return duplicates
  def artists
    songs.map { | song| song.artist }.uniq
  end
end
