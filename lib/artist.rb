require 'pry'

class Artist 
  
  attr_accessor :name, :gerne
  
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
      if song.artist == self 
        song 
      end
    end
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def genres 
    self.songs.map do |song|
      if song != nil  
      song.genre 
      #binding.pry 
    end
    end
  end
      
end