require 'player'

describe Player do
  subject(:vetinari) { Player.new('Vetinari') }

  describe '#name' do
    it 'returns the name' do
      expect(vetinari.name).to eq 'Vetinari'
    end
  end
end
