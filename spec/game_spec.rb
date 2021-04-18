require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#attack' do
    it "should deduct 10 points from player's HP" do
      expect(player_2).to receive(:deduct)
      subject.attack(player_2)
    end
  end
end
