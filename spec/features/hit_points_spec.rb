feature 'View hit points:' do
  scenario 'see Player 2\'s hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Havelock'
    fill_in :player_2_name, with: 'Margolotta'
    click_button 'Done!'
    expect(page).to have_content 'Margolotta: 100HP'
  end
end
