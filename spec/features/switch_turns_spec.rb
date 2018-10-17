feature 'Switching turns' do
  scenario 'Starting player is player 1' do
    sign_in_and_play
    expect(page).to have_content 'It is Alices turn'
  end
end
