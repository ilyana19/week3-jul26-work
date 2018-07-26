require_relative 'body'

class Moon < Body
  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

  attr_reader :month, :planet
end