class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def self.all
    @@all
  end

  def cities
    cities_array = self.class.all.map{|gallery| gallery.city}
    unique_cities_array = cities_array.uniq
  end

  def artists
    this_gallery_paintings = Painting.all.select {|painting| painting.gallery == self}
    this_gallery_paintings.map {|painting| painting.artist}
  end

  def artist_names
    artists.map {|artist| artist.name}
  end

  def combined_years_active
    years_active_array = artists.map {|artist| artist.years_active}
    combined_years_active = years_active_array.reduce(:+)
  end

end # end of Gallery class
