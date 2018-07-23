require 'pry'
class Painting

  attr_reader :title, :style, :artist, :gallery

@@all = []
  def initialize(title, style, artist, gallery)
    @artist = artist
    @gallery = gallery
    @title = title
    @style = style
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_styles
    styles = []
    @@all.map do |instance|
      styles << instance.style
    end
    styles.uniq
  end

end
