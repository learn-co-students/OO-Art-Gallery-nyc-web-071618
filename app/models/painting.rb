class Painting

  attr_reader :title, :style

  @@all = []

  def initialize(title, style)
    @title = title
    @style = style
    @@all << self
  end

  def self.all# Get a list of all paintings
    @@all
  end

  def self.get_painting_styles# Get a list of all painting styles
    style = all.map do |painting|
      painting.style
    end
    style.uniq #a style should not appear more than once in the list
  end
end
