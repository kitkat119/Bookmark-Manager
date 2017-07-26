feature 'adding a tag' do
  scenario 'user can add a tag when creating a bookmark' do
    visit ('/links')
    add_bookmark
    expect(page).to have_content '[Programming]'
  end
end
