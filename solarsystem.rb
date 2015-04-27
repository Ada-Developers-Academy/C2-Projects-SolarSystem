require_relative 'planet'

class SolarSystem
  attr_accessor :planets
  
  def initialize(planets = [])
    @planets = planets
  end
end
