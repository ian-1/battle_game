feature 'Shows game name' do
  scenario 'Can run app and render game title' do
    visit('/')
    expect(page).to have_content 'Battle!'
  end
end
