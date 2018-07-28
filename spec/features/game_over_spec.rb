feature 'Game over' do
  context 'when Player 1 reaches zero first:' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(100)
      find_by_id('Attack').click
    end

    scenario 'Player 1 loses' do
      expect(page).to have_content 'Vetinari lost!'
    end
  end

  context 'when Player 2 reaches zero HP first' do
    before do
      sign_in_and_play
      allow(Kernel).to receive(:rand).and_return(100)
      find_by_id('Attack').click
    end
     scenario 'Player 2 loses' do
      expect(page).to have_content 'Vimes lost!'
    end
  end
end 
