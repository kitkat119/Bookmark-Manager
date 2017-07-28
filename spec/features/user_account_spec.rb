feature 'user can sign up to an account' do
  scenario 'signing up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content "Welcome, example@example.com"
    expect(User.first.email).to eq 'example@example.com'
  end

  scenario 'user cannot create an account with the incorrect password' do
    expect { sign_up(password_confirmation: 'exanple') }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content 'Your password and confirmation password do not match'
  end
end
