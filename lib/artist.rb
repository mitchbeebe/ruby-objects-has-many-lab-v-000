class Artist
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
    song.artist_name = self.name
  end
  
end