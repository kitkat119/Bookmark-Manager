feature 'creating links' do
  scenario 'Visiting homepage' do
    visit('/links')
    click_button 'add link'
    expect(page).to have_content('')
  end
end
