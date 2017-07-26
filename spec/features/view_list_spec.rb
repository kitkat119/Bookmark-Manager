feature "view the list of bookmarks" do
  scenario 'visiting homepage' do
      visit('/links')
      add_bookmark
      expect(page.status_code).to eq 200
      within 'ul#links' do
      expect(page).to have_content "Makers Academy"
    end
  end
end
