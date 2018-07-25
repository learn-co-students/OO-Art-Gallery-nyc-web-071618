
class Artist

  attr_reader :artist_name, :years_active
  @@all = []

  def initialize(artist_name, years_active)
    @artist_name = artist_name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.map do |painting|
      painting.artist == self
      painting
    end
  end

  def galleries
    paintings.map{|painting| painting.gallery}
  end

  def gallery_cities
    galleries.map{|gallery| gallery.city}
  end

  def self.total_experience
    self.all.map{|artist| artist.years_active}
  end

  def self.average_experience
    self.total_experience.inject(:+) / self.all.count.to_f
  end

end
