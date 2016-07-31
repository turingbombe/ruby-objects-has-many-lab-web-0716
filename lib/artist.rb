class Artist
  attr_accessor :name, :songs
  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_name)
    self.songs << song_name
    # binding.pry
    songs.last.artist = self
    @@song_count += self.songs.count
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.songs << song
    songs.last.artist = self
    @@song_count += self.songs.count 
  end
  def self.song_count
    @@song_count
  end

end