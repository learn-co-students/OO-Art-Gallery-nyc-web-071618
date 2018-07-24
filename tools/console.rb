require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

artist1 = Artist.new("Frida Khalo", 70)
artist2 = Artist.new("Picasso", 65)
artist3 = Artist.new("Van Gogh", 55)

gallery1 = Gallery.new("LACMA", "LA")
gallery2 = Gallery.new("The Met", "LA")
gallery3 = Gallery.new("MOMA", "Manhattan")

painting1 = Painting.new("Sun and Life", "Allegory", artist1, gallery1)
painting2 = Painting.new("Guernica", "Cubism", artist2, gallery2)
painting3 = Painting.new("The Starry Night", "Modern Art", artist3, gallery3)

binding.pry
