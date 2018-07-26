require 'player'

describe Player do
  subject(:vetinari) { Player.new('Vetinari') }
  subject(:vimes) { Player.new('Vimes') }

  describe '#name' do
    it 'returns the name' do
      expect(vetinari.name).to eq 'Vetinari'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(vetinari.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(vimes).to receive(:receive_damage)
      vetinari.attack(vimes)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player\'s hit points' do
      expect { vetinari.receive_damage }.to change { vetinari.hit_points }.by(-10)
    end
  end
end
