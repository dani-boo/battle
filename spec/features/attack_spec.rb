feature 'Attack:' do

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
    click_button 'Attack'
    expect(page).to have_content 'Vimes attacked Vetinari'
  end

  scenario 'reduces Player 2\'s HP by 10' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack!'
    expect(page).not_to have_content 'Vimes: 100HP'
    expect(page).to have_content 'Vimes: 90HP'
  end
end
