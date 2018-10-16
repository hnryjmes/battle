feature 'Testing form' do
  scenario 'Can fill in and submit form then see names' do
    visit('/')
    fill_in('Player 1', with: 'Alice')
    fill_in('Player 2', with: 'Bob')
    click_button('Submit')
    expect(page).to have_content 'Alice'
    expect(page).to have_content 'Bob'
  end
end
