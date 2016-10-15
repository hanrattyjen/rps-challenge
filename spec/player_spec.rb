require 'player'

describe Player do
  subject(:player) { Player.new('player')}
  let(:choice) { double(:choice) }

  describe '#name' do
    it 'returns the name' do
      expect(subject.name).to eq 'player'
    end
  end

  describe '#choice' do
    it 'allows player to make a choice' do
      expect(subject.choice(0)).to eq "Rock"
    end
  end

end
