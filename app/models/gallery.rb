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
    cities_array = self.class.all.map{|instance| instance.city}
    cities_array.uniq
  end

  def name_of_artist
    #method can call on list_of_artist instead of the select function, but I
    #misread the question so i did name(string) first.
    an_array = Painting.all.select{|instance| instance.gallery == self}
    an_array = an_array.map{|instance| instance.artist.name}
    an_array.uniq
  end

  def list_of_artist
    Painting.all.select{|instance| instance.gallery == self}
  end

  def experience
    expert = 0
    list_of_artist.map{|instance| expert += instance.artist.years_active}
    expert
  end





  end
