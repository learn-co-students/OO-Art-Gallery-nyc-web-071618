class Painting
  @@all = []
  attr_reader :title, :style,:artist
  attr_accessor :gallery

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
    arr = self.all.map {|painting|
        painting.style
    }
    arr.uniq
  end
end
