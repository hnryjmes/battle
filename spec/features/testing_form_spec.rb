feature 'Testing form' do
  scenario 'Can fill in and submit form then see names' do
    visit('/')
    fill_in('name', with: 'Bob')
    click_button('Submit')
    expect(page).to have_content 'Bob'
  end
end
