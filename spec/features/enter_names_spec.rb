feature 'Enter players' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Havelock'
    fill_in :player_2_name, with: 'Margolotta'
    click_button 'Done!'
    expect(page).to have_content 'Havelock vs. Margolotta'
  end
end
