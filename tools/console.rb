require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

gallery1 = Gallery.new('G1', 'Paris')
gallery2 = Gallery.new('G2', 'London')
gallery3 = Gallery.new('G3', 'NYC')

artist1 = Artist.new('Bob', 3)
artist2 = Artist.new('Dianna', 7)
artist3 = Artist.new('Emily', 9)

painting1 = Painting.new('Title1', 'Style1', artist1, gallery3)
painting2 = Painting.new('Title2', 'Style2', artist3, gallery1)
painting3 = Painting.new('Title3', 'Style3', artist2, gallery2)
painting4 = Painting.new('Title4', 'Style3', artist2, gallery3)

binding.pry
