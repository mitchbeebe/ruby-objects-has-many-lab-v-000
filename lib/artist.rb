class Artist
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
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
  
  def songs
    @songs
  end
end