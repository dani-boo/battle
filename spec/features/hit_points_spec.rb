feature 'View hit points:' do

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  scenario 'see Player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Vimes: 30HP'
  end

  # As Player 1,
  # So I can see how close I am to losing,
  # I want to see my own hit points
  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Vetinari: 30HP'
  end
end
