class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def get_paintings
    Paintings.all.select do |painting|
      painting.artist == self
    end
  end

  def get_galleries
    self.get_paintings.map do |painting|
      painting.gallery
    end
  end

  def get_city
    self.get_galleries.map do |gallery|
      gallery.city
    end
  end

  def self.average_experience
    size = @@all.size
    years_active_sum = 0
    if size == 0 
      0
    else
      self.all.each do |artist|
        years_active_sum += artist.years_active
    end
    years_active_sum / size

  end

end
