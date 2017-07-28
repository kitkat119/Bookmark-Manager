feature 'adding a tag' do
  scenario 'user can add a tag when creating a bookmark' do
    visit ('/links')
    add_bookmark
    expect(page).to have_content 'Programming'
  end

  scenario 'user can add multiple tags to a link' do
    visit('/links')
    click_link 'Add bookmark'
    fill_in :url, with: 'www.codecademy.com'
    fill_in :title, with: 'codecademy'
    fill_in :tags, with: 'coding education'
    click_button 'Submit'
    expect(page).to have_content 'coding education'
  end
end
