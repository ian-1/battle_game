feature 'attack player 2 and get confirmation' do
  scenario 'player 1 can attack player 2 and see hit' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player_1 attacked Player_2'
  end
end
