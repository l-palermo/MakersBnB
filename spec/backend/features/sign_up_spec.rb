require './app.rb'

RSpec.feature 'Sign up' do

  scenario 'it displays sign up button' do
    visit '/'
    expect(page).to have_text('Makers BnB')
  end

  scenario 'it goes to a sign up page' do
    visit '/'
    click_button 'sign_up'
    expect(current_path).to eq('/sign_up')
    expect(page).to have_text('Makers BnB')
  end

  scenario 'it record the name and display it in the home page' do 
    visit '/'
    click_button 'sign_up'
    expect(current_path).to eq('/sign_up')
    fill_in 'name', with: 'user'
    fill_in 'email', with: 'email'
    fill_in 'password', with: 'password'

    click_button 'submit'
    expect(current_path).to eq('/makersbnb')
    expect(page).to have_content('Makers BnB', 'Welcome user')
  end
end