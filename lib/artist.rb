class Artist
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
  
  def add_song(song)
    self.songs << song
    song.artist = self
    song.artist_name = self.name
  end
  
  def add_song_by_name(name)
    song = Song.new
    song.name = name
    song.artist = self
  end
  
  def self.song_count
    self.songs.length
  end
end