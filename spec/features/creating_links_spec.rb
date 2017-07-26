feature 'creating a new link' do
  scenario 'adding a new link' do
    visit ('/links')
    add_bookmark
    expect(page).to have_content 'www.makersacademy.com'
  end
end
