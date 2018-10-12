class Song
  @@all = []
  attr_accessor :name, :artist, :genre

  def self.all
    @@all
  end

  def initialize(name = "", genre = "",artist = "")
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def artist
    @artist
  end
end
