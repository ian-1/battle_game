class Game
  attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = player_1
  end

  def attack(defender)
    defender.deduct
    switch_turn
  end

  private

  def switch_turn
    @turn = if @player_1
              @player_2
            else
              @player_1
            end
  end
end
