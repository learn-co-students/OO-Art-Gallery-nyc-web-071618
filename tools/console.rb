require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


artist1 = Artist.new("picasso", 20)
artist2 = Artist.new("sarah", 2)
artist3 = Artist.new("michael angelo", 45)


gal1 = Gallery.new("poets house", "berlin")
gal2 = Gallery.new("MOMA", "rome")
gal3 = Gallery.new("museum", "montreal")

painting1 = Painting.new("fear", "abstract", artist1, gal1)
painting2 = Painting.new("smokey water", "black and white", artist2, gal3)
painting3 = Painting.new("rockies","canadian", artist3, gal2)
painting4 = Painting.new("bae","nationalist", artist1, gal2)
painting5 = Painting.new("mad","nationalist", artist1, gal3)



binding.pry
