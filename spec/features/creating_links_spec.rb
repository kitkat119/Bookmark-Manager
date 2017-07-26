feature 'creating a new link' do
  scenario 'adding a new link' do
    visit ('/links')
    click_link 'Add bookmark'
    fill_in :url, with: 'www.cats.com'
    fill_in :title, with: 'Cats'
    click_button 'Submit'
    expect(page).to have_content 'www.cats.com'
  end
end
