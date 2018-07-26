class System
  def initialize
    @bodies = []
  end

  def add(body)
    @bodies << body
  end

  def total_mass
    total = 0
    @bodies.each { |body| total += body.mass }
    return total
  end
end