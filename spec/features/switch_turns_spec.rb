# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
describe 'Switch turns' do
  context 'see whose turn it is' do
    scenario 'when game starts' do
      sign_in_and_play
      expect(page).to have_content "Vetinari's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content "Vetinari's turn"
      expect(page).to have_content "Vimes's turn"
    end
  end
end
