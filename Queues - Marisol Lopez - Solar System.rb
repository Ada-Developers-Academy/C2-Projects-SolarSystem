puts "Choose a planet: "
puts "Mercury, Venus, Earth, Mars, or Jupiter."
user_planet = gets.chomp.downcase

# # Create a custom class
class Planet
  attr_accessor :name, :moons, :diameter, :orbit, :rings, :distance_from_sun
# Create and use an initialize method in your class
# Create and use instance variables in your class
  def initialize (name, moons, diameter, orbit, rings, distance_from_sun)
    @name = name
    @moons = moons
    @diameter = diameter
    @orbit = orbit
    @rings = rings
    @distance_from_sun = distance_from_sun
  end
  def myplanet
    puts "\nOur planet #{@name} has #{@moons} moons. #{@name}'s diameter is #{@diameter} with an orbit of #{@orbit}, has #{@rings} rings and has a distance of #{@distance_from_sun} from the sun.\n\n"
  end
end

mercury = Planet.new("Mercury", 0, "3,021 mi", "88 days", 0, "57,909,227 km")
earth = Planet.new("Earth", 1, "7917.5 mi", "365.26 days", 0, "149,598,262 km")
mars = Planet.new("Mars", 2, "4212 mi", "1.9 years", 0, "227,943,824 km")
jupiter = Planet.new("Jupiter", 53, "86,881.4 mi", "11.9 years", 4, "778,340,821 km")
venus = Planet.new("Venus", 0, "7,520.8 mi", "225 days", 0, "108,209,475 km")

case user_planet
  when "jupiter"
    jupiter.myplanet
  when "mercury"
    mercury.myplanet
  when "earth"
    earth.myplanet
  when "mars"
    mars.myplanet
  when "venus"
    venus.myplanet
  else
    puts "Sorry, I'm not familiar with that planet.\n\n"
end

def myplanet (planet)
  puts "\nOur planet #{planet.name} has #{planet.moons} moons. #{planet.name}'s diameter is #{planet.diameter} with an orbit of #{planet.orbit}, has #{planet.rings} rings and has a distance of #{planet.distance_from_sun} from the sun.\n\n"
end

class SolarSystem
  attr_accessor :planets
  def initialize
    @planets = []
  end
  def add_a_planet(planet)
    @planets.push(planet)
  end
  def add_list_of_planets(a, b, c, *rest)
    @planets.push(a, b, c, *rest)
  end
end
