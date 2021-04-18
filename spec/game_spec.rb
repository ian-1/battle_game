require 'game'

# rubocop:disable Metrics/BlockLength
describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject(:subject) { described_class.new(player_1, player_2) }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(subject.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(subject.player_2).to eq player_2
    end
  end

  describe '#turn' do
    it 'starts as player 1' do
      expect(subject.turn).to eq player_1
    end
  end

  describe '#attack' do
    it "should deduct 10 points from player's HP" do
      expect(player_2).to receive(:deduct)
      subject.attack(player_2)
    end

    it "should switch player's turn" do
      allow(player_2).to receive(:deduct)
      subject.attack(player_2)
      expect(subject.turn).to eq(player_2)
    end
  end
end
# rubocop:enable Metrics/BlockLength
