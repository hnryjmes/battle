require 'game'
describe Game do

  let(:bob) { double :bob  }
  let(:alice) { double :alice }
  let(:game)  { described_class.new }

  describe '#attack' do
    it 'attacks player' do
      expect(bob).to receive(:receive_damage)
      game.attack(bob)
    end
  end

  describe 'turn' do
    it 'tells us whose turn it is' do
      expect(game.turn).to eq 1
    end
  end

end
