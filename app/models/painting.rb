class Painting

  attr_reader :title, :style, :artist, :gallery

  @@all = []

  def initialize(title, style,artist,gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
  end

  def self.all
    @@all
  end

  def self.uniqe_styles
    styles = Painting.all.map {|painting| painting.style}
    unique_styles = styles.uniq
  end

end # end of Painting class
