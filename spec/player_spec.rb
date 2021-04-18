require 'player'

describe Player do
  let(:subject) { described_class.new('Bob') }

  describe '#name' do
    it "returns player's name" do
      expect(subject.name).to eq('Bob')
    end
  end

  describe '#deduct' do
    it 'deducts 10 pts from players HP' do
      subject.deduct
      expect(subject.hit_points).to eq(90)
    end
  end
end
