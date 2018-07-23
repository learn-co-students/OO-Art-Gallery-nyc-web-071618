require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


jin = Artist.new("jin", 27)
angel = Artist.new("angel", 26)
boba = Artist.new("boba", 4)
lucas = Artist.new("Lucas", 12)
fire_stone = Gallery.new("fire stone", "New York")
track = Gallery.new("track", "Chicago")
track1 = Gallery.new("track1", "Chicago")
track2 = Gallery.new("track2", "Chicago")
Painting.new("blue", "abstract", jin, fire_stone)
Painting.new("red", "abstract", jin, track)
Painting.new("black", "abstract", jin, track)
Painting.new("black", "abstract", lucas, track)
# jin = Painting.new("green", "high")
# angel = Painting.new("yellow", "fire")

Painting.all_styles
binding.pry

0
