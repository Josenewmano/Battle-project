feature 'Switching turns' do
  scenario 'switch from player1 to player2' do
    sign_in_and_play
    click_link ('Attack')
    expect(page).to have_content 'Jordans turn'
  end
end