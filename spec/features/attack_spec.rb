feature 'Attacking:' do

  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play # in web_helpers
    click_button 'Attack!'
    expect(page).to have_content 'Vetinari attacked Vimes'
  end

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation
  scenario 'Player 2 strikes back at Player 1' do
    sign_in_and_play
    attack_and_confirm
    find_by_id('Attack').click
    expect(page).to have_content 'Vimes attacked Vetinari'
  end

  context 'dealing set damage' do
    before do
      allow(Kernel).to receive(:rand).and_return(10)
    end
    # As Player 1,
    # So I can start to win a game of Battle,
    # I want my attack to reduce Player 2's HP by 10
    scenario 'reduces Player 2\'s HP by 10' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content 'Vimes: 100HP'
      expect(page).to have_content 'Vimes: 90HP'
    end

    # As Player 1,
    # So I can start to lose a game of Battle,
    # I want Player 2's attack to reduce my HP by 10
    scenario 'reduce Player 1 HP by 10' do
      sign_in_and_play
      2.times { attack_and_confirm }
      expect(page).not_to have_content 'Vetinari: 100HP'
      expect(page).to have_content 'Vetinari: 90HP'
    end
  end

  # As a Player,
  # So I can play a suspenseful game of Battle,
  # I want all Attacks to deal a random amount of damage
  context 'dealing random damage' do
    scenario 'reduce Player 2 HP by a random amount' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content 'Vimes: 100HP'
    end

    scenario 'reducing Player 1\'s HP by a random amount' do
      sign_in_and_play
      2.times { attack_and_confirm }
      expect(page).not_to have_content 'Vetinari: 100HP'
    end
  end
end 


