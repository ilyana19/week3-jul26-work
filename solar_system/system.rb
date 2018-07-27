class System
  def initialize
    @bodies = []
  end

  def add(body)
    # add to bodies array only if it doesn't exists
    @bodies << body if !@bodies.include?(body)
  end

  def all
    @bodies
  end

  def total_mass
    total = 0
    @bodies.each { |body| total += body.mass }
    return total
  end
end