class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  # Get a list of all galleries(done)

  def self.all
    @@all
  end

# Get a list of all cities that have a gallery. A city should not appear more than once in the list. (done)

  def self.cities_with_galleries
    cities = self.all.each do |gallery|
      gallery.city
    end
    cities.uniq
  end

# Get a list of artists that have paintings at a specific gallery (done)

def paintings_in_gallery #list of all paintings in a gallery
  Painting.all.select do |painting|
    painting.gallery == self #gallery instance
  end
end

def artists_artwork_in_a_gallery
  paintings_in_gallery.map do |painting|
    painting.artist
  end
end

# Get a list of the names of artists that have paintings at a specific gallery (done)

def artist_names
  artists_artwork_in_a_gallery.map do |artist_instance|
    artist_instance.name
  end
end

# Get the combined years of experience of all artists at a specific gallery (done)

def combined_years
  total = 0
  artists_artwork_in_a_gallery.map do |artist|
    total += artist.years_active
  end
  total
end



end
