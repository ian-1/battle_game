class Game
  attr_reader :player_1
  attr_reader :player_2

  def initialize( player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(defender)
    defender.deduct
  end
end
