class Player
  DEFAULT_HIT_POINTS = 30
  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def damage(amount)
    @hit_points -= amount  
  end

  def computer?
    false
  end
end
