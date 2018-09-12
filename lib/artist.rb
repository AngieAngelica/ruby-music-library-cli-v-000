class Artist

attr_accessor :name

@@all = []

  def initialize(artist_name)
    @name= artist_name
    @songs= []
  end 
  
  def self.all
    @@all
  end 
  
  def self.destroy_all
    self.all.clear
  end 
  
  def save
    self.class.all << self
  end 
  
  def self.create(artist_name)
    artist = Artist.new(artist_name)
    artist.save
    artist
  end 
  
  def songs
    @songs
  end
  
  def add_song(song)
    if !songs.include?(song)
      songs << song
    end
    
    song.artist = self unless !song.artist == nil
  end

end