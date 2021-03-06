class Genre
  attr_reader :name
 attr_accessor :songs


 def initialize name
   @name = name
 end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    self.songs.map {|song| song.artist}
  end

end
