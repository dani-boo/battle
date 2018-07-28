def sign_in_and_play(computer_opponent = false)
  visit('/')
  fill_in :player_1_name, with: 'Vetinari'
  fill_in :player_2_name, with: 'Vimes' unless computer_opponent
  click_button 'Done!'
end

def attack_and_confirm
  find_by_id('Attack').click
  click_button 'OK'
end
