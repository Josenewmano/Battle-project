feature "Testing infrastructure" do
  
  scenario "Can run app and test page content" do
    visit('/')
    expect(page).to have_content("Testing infrastructure is working")
  end
end