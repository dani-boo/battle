feature 'Attack:' do

  scenario 'mightily smites Player 2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Havelock attacked Margolotta'
  end

  scenario 'reduces Player 2\'s HP by 10' do
    sign_in_and_play
    click_button 'Attack!'
    find_by_id('OK').click
    expect(page).not_to have_content 'Margolotta: 100HP'
    expect(page).to have_content 'Margolotta: 90HP'
  end
end
