require 'player'

describe Player do
  describe '#name' do
    let(:subject) { described_class.new('Bob') }

    it "returns player's name" do
      expect(subject.name).to eq('Bob')
    end
  end
end