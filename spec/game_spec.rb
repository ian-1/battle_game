require 'game'

describe Game do
  let (:player) { double :player }

  describe '#attack' do
    it "should deduct 10 points from player's HP" do 
      expect(player).to receive(:deduct)
      subject.attack(player)
    end
  end
end
