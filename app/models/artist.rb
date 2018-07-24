class Artist

  attr_reader :name, :years_active

  @@all = []


  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    self.class.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    paintings.map {|painting| painting.city}
  end

  def self.average_years_active
    array_of_years = self.class.all.map {|artist| artist.years_active}
    total_years = array_of_years.reduce(:+)
    num_artists = self.class.all.size
    average_years_active = total_years / num_artists
  end

end # end of Artist class
