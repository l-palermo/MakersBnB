require './app.rb'

RSpec.feature 'Sign in' do

  scenario 'it displays hello world' do
    visit '/'
    expect(page).to have_text('Makers BnB')
  end

  scenario 'it goes to a sign in page' do
    visit '/'
    click_button 'sign_in'
    expect(current_path).to eq('/sign_in')
    expect(page).to have_text('Makers BnB')
  end

  scenario 'it record the name and display it in the home page' do 
    visit '/'
    click_button 'sign_in'
    expect(current_path).to eq('/sign_in')
    fill_in 'name', with: 'user'
    # fill_in 'email', with: 'email'
    # fill_in 'password', with: 'password'

    click_button 'submit'
    expect(current_path).to eq('/makersbnb')
    expect(page).to have_content('Makers BnB', 'user')
  end
end