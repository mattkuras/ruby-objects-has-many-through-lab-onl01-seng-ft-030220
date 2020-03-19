class Genre 
  
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def songs 
    Song.all.map do |song|
      if song.genre == self 
        song 
      end
    end
  end
  
  def artists
    self.songs.map do |song|
     if song != nil && song.genre == self 
        song.artist 
      end
    end
  end
  
end