feature 'Enter players:' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Havelock vs. Margolotta'
  end
end
