def add_bookmark
  click_link 'Add bookmark'
  fill_in :url, with: 'www.makersacademy.com'
  fill_in :title, with: 'Makers Academy'
  fill_in :tags, with: 'Programming'
  click_button 'Submit'
end

def sign_up(email: 'example@example.com',
              password: 'example',
              password_confirmation: 'example')
  visit('/links')
  click_link 'Sign up'
  expect(page.status_code).to eq(200)
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Create account'
end
