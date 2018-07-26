class Painting

  attr_reader :title, :style, :artist, :gallery

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

  def self.all_painting_styles
    styles = self.all.collect do |painting|
      painting.style
    end
    styles.uniq
  end

end #class end


# Get a list of all paintings (done)

# Get a list of all painting styles (a style should not appear more than once in the list) (done)
