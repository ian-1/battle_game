feature 'hit points' do
  scenario "Player 2's HP gets deducted by 10 when hit" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player_2: 90 HP'
  end

  scenario 'player 1 can see player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content '100 HP'
  end
end