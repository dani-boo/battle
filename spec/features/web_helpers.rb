def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Havelock'
  fill_in :player_2_name, with: 'Margolotta'
  click_button 'Done!'
end
