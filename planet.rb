class Planet
  attr_accessor :name, :diameter, :mass, :inhabited

  def initialize(options = {})
    @name      = options[:name] || random_planet_name
    @diameter  = options[:diameter] || 0
    @mass      = options[:mass] || 0
    @inhabited = options[:inhabited] || false
  end

  private

  def random_planet_name
    noun = %w(cow duck chicken kitty pony monkey unicorn).sample.capitalize
    adj = %w(plucky fiesty fiery stringy tiny stinky funny).sample.capitalize
    number = (rand * 100).floor

    "#{ adj } #{ noun } #{ number }"
  end
end
