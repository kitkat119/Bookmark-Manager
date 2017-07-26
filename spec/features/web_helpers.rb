def add_bookmark
  click_link 'Add bookmark'
  fill_in :url, with: 'www.makersacademy.com'
  fill_in :title, with: 'Makers Academy'
  fill_in :tags, with: 'Programming'
  click_button 'Submit'
end
