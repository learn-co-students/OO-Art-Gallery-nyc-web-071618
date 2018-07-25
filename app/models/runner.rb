require "artist"
require "gallery"
require "painting"
require "pry"


artist = Artist.new("picasso", 10)

gallery1 = Gallery.new("MET", "NYC")
painting1 = Painting.new("yytt", "impressionist", artist, gallery1)
painting1 = Painting.new("cat", "bla", artist, "gallery")
painting1 = Painting.new("bear", "impressionist", artist, gallery1)
painting1 = Painting.new("turtle", "impressionist", artist, gallery1)
painting1 = Painting.new("dog", "impressionist", artist, "MET")
painting1 = Painting.new("person", "impressionist", artist, "MET")
c

