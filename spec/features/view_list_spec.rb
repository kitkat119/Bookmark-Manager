feature "view the list of bookmarks" do
  scenario 'visiting homepage' do
      visit('/links')
      add_bookmark
      expect(page.status_code).to eq 200
      within 'ul#links' do
      expect(page).to have_content "Makers Academy"
    end
  end

  scenario 'filter links by the bubble tag' do
    visit('/links')
    click_link 'Add bookmark'
    fill_in :url, with: 'www.bubbles.com'
    fill_in :title, with: 'Bubbles'
    fill_in :tags, with: 'bubbles'
    click_button 'Submit'
    fill_in :search, with: 'bubbles'
    click_button 'Submit'
    expect(page).to have_content 'www.bubbles.com'

  end
end
