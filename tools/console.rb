require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#binding.pry
#oputs = puts
def test(str, v1=nil, v2=nil)
  if v1 != v2
    puts str.red
    puts "\texpect: #{v1}, \n\tgot: #{v2}".red
  else
    puts str.green

  end
end


a1 = Artist.new("haha",10)
a2 = Artist.new("KKKKK",20)
a3 = Artist.new("CCCC",25)
g1 = Gallery.new("grand gallery", "New york" )
g2 = Gallery.new("grand gallery", "Flatiron" )
p1 = Painting.new("Good Painting", "Classic", a1, g1)
p2 = Painting.new("p2", "Classic", a1, g2)
p3 = Painting.new("p3", "Classic", a1, g1)
p4 = Painting.new("p4", "Classic", a2, g1)
p5 = Painting.new("p5", "Classic", a3, g2)

test "Artist"
test "1. artist.paintings ", a1.paintings,[p1,p2,p3]

test "2. artist.galleries ",a1.galleries,[g1,g2,g1]
test "3. artist.cities ",a1.cities,[g1.city,g2.city, g1.city]
test "4. Artist.avgerage_of_year ",Artist.avgerage_of_year,55/3
test "Painting"
test "1. Painting.styles ", Painting.styles, ["Classic"]
#gallary
test "gallery"
test "1. gallery.artists ",g1.artists, [a1,a2]
test "2. gallery.years_exp ",g1.years_exp, 30
test "3. gallery.cities ",Gallery.cities, [g1.city, g2.city]
test "4. gallery.names ", g1.names, [a1.name, a2.name]
