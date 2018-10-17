require 'player'
describe Player do
  let(:bob) { described_class.new("Bob") }
  let(:alice) { described_class.new("Alice") }
  describe '#name' do
    it 'returns name' do
      expect(bob.name).to eq ("Bob")
    end
  end
  describe '#attack' do
    it 'attacks player' do
      expect(alice).to receive(:receive_damage)
      bob.attack(alice)
    end
  end
  describe '#hit' do
    it 'reduces player hit points' do
      expect{ alice.receive_damage }.to change{ alice.hit_points }.by(-10)
    end
  end
  describe '#hit_points' do
    it 'has a default value of 60' do
      expect(bob.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
end
