class Painting

  attr_reader :title, :style, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @@all << self
    @artist = artist
    @gallery = gallery
  end

  def self.all
    @@all
  end

  def self.painting_styles
  # all_styles = []
  #   self.all.each do |painting|
  #     if all_styles.include?(painting.style) == false
  #       all_styles << painting.style
  #     end
  #   end
  # all_styles

  arr = self.all.map do |painting|
    painting.style
    end
  arr.uniq 
end
