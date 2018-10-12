class Artist
  attr_accessor :name, :artist, :genre,:songs
@@all = []
def self.all
  @@all
end
  def initialize name
    @name = name
    @@all << self
    @songs=[]
  end
def new_song(name, genre)
  song = Song.new(name, genre, self)
  @songs << song
  self.songs.last
end
def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
Song.all.map{|song| song.genre}
  end
end
