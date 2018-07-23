require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

artist1 = Artist.new("Yung", 5)
artist2 = Artist.new("Jin", 10)

painting1 = Painting.new("New York", "Modern")
painting2 = Painting.new("Paris", "Pre-Modern")
painting3 = Painting.new("Boston", "Modern")

gallery1 = Gallery.new(artist1, painting1, "New York")
gallery2 = Gallery.new(artist2, painting2, "New York")
gallery3 = Gallery.new(artist1, painting3, "Boston")

binding.pry
