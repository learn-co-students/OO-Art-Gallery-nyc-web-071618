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

  def paintings
    Painting.all.select{|painting|
      painting.artist == self
    }
  end

  def galleries
    self.paintings.map { |painting|
      painting.gallery
    }
  end

  def cities
    self.galleries.map { |gallery|
      gallery.city
    }
  end

  #self.galleries.map{|g|g.city}

  def self.avgerage_of_year
    size = self.all.size
    return 0 if size == 0
    sum = 0
    self.all.each {|artist|
      sum += artist.years_active
    }
    sum / size
  end
end
