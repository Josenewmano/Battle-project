# require 'capybara'

# feature "Testing infrastructure" do
  
#   scenario "Can run app and test page content" do
#     visit('/')
#     expect(page).to have_content("Testing infrastructure is working")
#   end
# end

feature "Capybara name in form" do
  scenario "Users can fill in their name in a form and see their names on screen" do
    visit('/')
    fill_in(:player_1_name, with: 'Joe')
    fill_in(:player_2_name, with: 'Jordan')
    click_button('Submit')
    expect(page).to have_content 'Joe vs. Jordan'
  end
end