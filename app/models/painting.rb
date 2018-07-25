
class Painting

  attr_accessor :artist, :gallery
  attr_reader :title, :style
  @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.styles
    self.all.map{|painting| painting.style}.uniq
  end

end
