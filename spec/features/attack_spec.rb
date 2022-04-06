feature 'Hit points' do
  scenario 'viewing player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Jordan: 100HP'
  end
end

feature 'Attacks' do
  before do
    sign_in_and_play
    click_link 'Attack'
  end

  scenario 'receive a confirmation after an attack on Player 2' do
    expect(page).to have_content 'Joe attacked Jordan'
  end

  scenario 'attack reducing player 2 hit points by 10' do
    expect(page).not_to have_content 'Jordan: 100HP'
    expect(page).to have_content 'Jordan: 90HP'
  end
end