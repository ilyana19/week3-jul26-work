require_relative "system"
require_relative "planet"
require_relative "star"
require_relative "moon"

system1 = System.new

sun = Star.new('Sun', 1000, 'G-Type')
earth = Planet.new('Earth', 1000, 24, 365)
moon = Moon.new('Moon', 1000, 1, earth)
mars = Planet.new('Mars', 1000, 24, 687)
uranus = Planet.new("Uranus", 1000, 17, 30660)
titania = Moon.new("Titania", 1000, 2.8, uranus)
oberon = Moon.new("Oberon", 1000, 0.44, uranus)

system1.add(earth)
system1.add(sun)
system1.add(moon)
system1.add(mars)
system1.add(uranus)
system1.add(titania)
system1.add(oberon)

# item already exists, so not added
system1.add(earth)
system1.add(sun)
system1.add(moon)

puts "\nThe sun is a #{sun.type} star."

puts "\nNumber of days it takes for #{earth.name} to rotate all the way around in hours: #{earth.day} and it takes #{earth.year} days to orbit the sun once."
puts "The moon takes about #{moon.month} month to orbit around #{moon.planet.name}."

puts "\nNumber of days it takes for #{mars.name} to rotate all the way around in hours: #{mars.day} and it takes #{mars.year} earth days to orbit the sun once."

puts "\nNumber of days it takes for #{uranus.name} to rotate all the way around in hours: #{uranus.day} and it takes #{uranus.year} earth days to orbit the sun once."
puts "#{titania.name}takes about #{titania.month} month to orbit around #{titania.planet.name}."
puts "#{oberon.name}takes about #{oberon.month} month to orbit around #{oberon.planet.name}."

puts "\nTotal mass of the system: #{system1.total_mass}"
puts ""
p system1.all