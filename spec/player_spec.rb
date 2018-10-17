require 'player'
describe Player do
  let(:alice) { described_class.new("Alice") }
  let(:bob) { described_class.new("Bob") }
  describe '#name' do
    it 'returns name' do
      expect(bob.name).to eq ("Bob")
    end
  end

  describe '#hit' do
    it 'reduces player hit points' do
      expect{ bob.receive_damage }.to change{ bob.hit_points }.by(-10)
    end
  end
  describe '#hit_points' do
    it 'has a default value of 60' do
      expect(bob.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
end
