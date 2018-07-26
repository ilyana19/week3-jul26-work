require_relative 'system'

class Body < System
  def initialize(name, mass)
    @name = name
    @mass = mass
  end

  attr_reader :name, :mass
end