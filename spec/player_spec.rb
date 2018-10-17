require 'player'
describe Player do
  subject(:player) {described_class.new("Bob")}
  describe '#name' do
    it 'returns name' do
      expect(player.name).to eq ("Bob")
    end
  end
end
