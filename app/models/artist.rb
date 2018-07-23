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
    Painting.all.select{|instances| instances.artist == self}
  end

  def galleries
    galleries_array = paintings.map{|instances| instances.gallery}
    galleries_array.uniq
  end

  def cities_of_galleries
    cities_array = paintings.map{|instance| instance.gallery.city}
    cities_array.uniq
  end

  def self.average_age
    count = 0
    self.all.each{|instance| count += instance.years_active}
    count / self.all.count
  end


end
