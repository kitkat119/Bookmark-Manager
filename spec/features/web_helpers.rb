def add_bookmark
  click_link 'Add bookmark'
  fill_in :url, with: 'www.makersacademy.com'
  fill_in :title, with: 'Makers Academy'
  fill_in :tags, with: 'Programming'
  click_button 'Submit'
end

def sign_up
  visit('/links')
  click_link 'Sign up'
  expect(page.status_code).to eq(200)
  fill_in :email, with: 'example@example.com'
  fill_in :password, with: 'example'
  click_button 'Create account'
end
