class Player
  attr_reader :name, :hit_points
  attr_accessor :message

  def initialize(name)
    @name = name
    @message = "has been named #{@name}"
    @hit_points = 100
  end

  def deduct
    @hit_points -= 10
  end
end
