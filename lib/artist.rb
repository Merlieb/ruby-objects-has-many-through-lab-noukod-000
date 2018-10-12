class Artist
  attr_accessor :name, :artist, :genre
@@all = []
def self.all
  @@all
end
  def initialize name
    @name = name
    @@all << self
  end
def new_song(name, genre)
  song = Song.new(name, genre, self)
  self.songs.last
end
def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
Song.all.map{|song| song.genre}
  end
end
