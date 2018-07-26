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


# Get a list of all artists (done)

# Get a list of all the paintings by a specific artist (done)

def paintings #prints out all the paintings
  Painting.all.select do |painting|
    self == painting.artist
  end
end

# Get a list of all the galleries that a specific artist has paintings in (done)

def all_galleries #list of all galeries with paintings of an artist (done)
  paintings.map do |painting|
    painting.gallery
  end
end

# Get a list of all cities that contain galleries that a specific artist has paintings in (done)

def all_cities
  all_galleries.map do |gallery|
    gallery.city
  end
  binding.pry
end

# Find the average years of experience of all artists(done)

def self.avg_years_experience
  years = 0
  self.all.map do |artist|
    years += artist.years_active
  end
  average = years / self.all.count
  average
end


end
