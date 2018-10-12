class Genre
  attr_reader :name, :genre
 attr_accessor :song
 def initialize name
   @name = name
 end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    Song.map {|song| song.artist}
  end

end
