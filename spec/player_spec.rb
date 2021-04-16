require 'player'

describe Player do
  let(:subject) { described_class.new('Bob') }
  
  describe '#name' do
    it "returns player's name" do
      expect(subject.name).to eq('Bob')
    end
  end

  describe '#attack' do
    it "should deduct 10 points from player's HP" do 
      player_2 = described_class.new('Biily')
      subject.attack(player_2)
      expect(player_2.HP).to eq(90)
    end
  end

end