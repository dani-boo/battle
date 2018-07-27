def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Vetinari'
  fill_in :player_2_name, with: 'Vimes'
  click_button 'Done!'
end

def attack_and_confirm
  click_button 'Attack!'
  click_button 'OK'
end
