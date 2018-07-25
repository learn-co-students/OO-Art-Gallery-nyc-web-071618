class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def cities
    cities_arr = self.all.map do |gallery|
      gallery.city
    end
    cities_arr.uniq
  end

#Get a list of artists that have paintings at a specific gallery
  def list_artists
    Painting.all.map do |painting|
      if painting.gallery == self
        painting.artist
      end
    end
  end

#Get a list of the names of artists that have paintings at a specific gallery
  def list_artist_names
    self.list_artists.name
  end

#Get the combined years of experience of all artists at a specific gallery
  def years_experience_all_artists
    years_experience = 0
    years_experience += self.list_artists.years_active
  end
  
end
