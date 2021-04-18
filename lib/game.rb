require 'player'

class Game
  def attack(defender)
    defender.deduct
  end
end
