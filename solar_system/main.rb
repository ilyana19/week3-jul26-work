require_relative "system"
require_relative "planet"
require_relative "star"
require_relative "moon"

system1 = System.new

earth = Planet.new('Earth', 1000, 24, 365)
sun = Star.new('Sun', 1000, 'G-Type')
moon = Moon.new('Moon', 1000, 1, earth)

system1.add(earth)
system1.add(sun)
system1.add(moon)

p system1
puts "\nTotal mass of the system: #{system1.total_mass}"
puts "Number of days it takes for #{earth.name} to rotate all the way around in hours: #{earth.day} and it takes it #{earth.year} days to orbit the sun once."
puts "The sun is a #{sun.type} star."
puts "The moon takes about #{moon.month} month to orbit around #{moon.planet.name}."