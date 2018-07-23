class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all# Get a list of all artists
    @@all
  end

  def all_galleries# Get a list of all the galleries that a specific artist has paintings in
    galleries = Gallery.all.map do |gallery|
      if gallery.artist == self
        gallery
      end
    end
    galleries.compact
  end

  def all_paintings# Get a list of all the paintings by a specific artists
    all_galleries.map do |gallery|
      if gallery.artist == self
        gallery.painting
      end
    end
  end

  def all_cities  # Get a list of all cities that contain galleries that a specific artist has paintings in
    all_galleries.map do |gallery|
      if gallery.artist == self
        gallery.city
      end
    end
  end

  def self.average_years_experience# Find the average years of experience of all artists
    total_years = 0
    all.each do |artist|
      total_years += artist.years_active
    end
    average = total_years.to_f  / all.length.to_f
  end
end
