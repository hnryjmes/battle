feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Alice attacked Bob'
  end
  scenario 'reduce Player 2 hit points' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Bob: 60HP'
    expect(page).to have_content 'Bob: 50HP'
  end
end
