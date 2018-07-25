
class Gallery

  attr_reader :gallery_name, :city
  @@all = []

  def initialize(gallery_name, city)
    @gallery_name = gallery_name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities
    self.all.map{|gallery| gallery.city}.uniq
  end

  def artists
    Painting.all.map do |gallery|
      gallery.artist == self
      gallery.artist
    end
  end

  def artist_names
    artists.map{|artist| artist.artist_name}
  end

  def artist_experience
    artists.map{|artist| artist.years_active}.inject(:+)
  end

end
