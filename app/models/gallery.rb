class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.cities
    self.all.map{|g|g.city}.uniq
  end

  def paintings
    Painting.all.select{|p|p.gallery==self}
  end
  def artists
    paintings.map{|p|p.artist}.uniq
  end

  def years_exp
    y = 0
    artists.each{|a| y += a.years_active}
    y
  end

  def names
    artists.map{|a|a.name}
  end
end
