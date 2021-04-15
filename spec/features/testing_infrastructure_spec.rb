feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Battle!'
  end
end
 
feature 'Enter names' do
  scenario 'Players can enter their names' do
    visit('/')
    fill_in :player_1_name, with: 'Player_1'
    fill_in :player_2_name, with: 'Player_2'
    click_button 'Enter players'

    save_and_open_page

    expect(page).to have_content 'Player_1 vs. Player_2'
  end
end



