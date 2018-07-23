class Gallery

  attr_reader :artist, :painting, :city

  @@all = []

  def initialize(artist, painting, city)
    @artist = artist
    @painting = painting
    @city = city
    @@all << self
  end

  def self.all# Get a list of all galleries
    @@all
  end

  def self.all_cities_with_galleries# Get a list of all cities that have a gallery
    cities = all.map do |gallery|
      gallery.city
    end
    cities.uniq #A city should not appear more than once in the list
  end

  def all_artists_with_painting_at_gallery# Get a list of artists that have paintings at a specific gallery
    artists = Gallery.all.map do |gallery|
      if gallery == self
        gallery.artist
      end
    end
    artists.compact
  end

  def all_artists_names_at_gallery# Get a list of the names of artists that have paintings at a specific gallery
    all_artists_with_painting_at_gallery.map do |artist|
      artist.name
    end
  end

  def combined_years_all_artists_at_gallery# Get the combined years of experience of all artists at a specific gallery
    total_years = 0
    all_artists_with_painting_at_gallery.each do |artist|
      total_years += artist.years_active
    end
    total_years
  end
end
