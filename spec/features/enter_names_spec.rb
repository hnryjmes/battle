feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Alice'
    fill_in :player_2_name, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Alice vs. Bob'
  end
end
