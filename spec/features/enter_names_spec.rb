feature 'Enter names' do
  scenario 'adding names' do
    sign_in_and_play
    expect(page).to have_content 'Joe vs. Jordan'
  end
end