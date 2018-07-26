require_relative 'body'

class Star < Body
  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

  attr_reader :type
end