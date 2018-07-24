class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities
    city_list = self.all.map do |gallery|
      gallery.city
    end
    city_list.uniq
  end

  def paintings
    Paintings.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  def artists_name
    artists.map do |artist|
      artist.name
    end
  end

  def years_of_experience
    sum_of_experience = 0
      artists.each do |artist|
       sum_of_experience += artist.years_active
     end
     sum_of_experience
  end

end
