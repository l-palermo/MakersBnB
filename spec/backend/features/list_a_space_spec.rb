RSpec.feature 'List a space' do

  scenario 'it allow to list a new space' do
    visit '/'
    click_button 'sign_up'

    expect(current_path).to eq('/sign_up')

    fill_in 'name', with: 'user'
    fill_in 'email', with: 'email'
    fill_in 'password', with: 'password'

    click_button 'submit'
    expect(current_path).to eq('/makersbnb')

    click_button 'list-a-space'

    expect(current_path).to eq('/makersbnb')
    expect(page).to have_content('list a space')

    fill_in 'name', with: 'living room'
    fill_in 'description', with: 'contained space'
    fill_in 'price', with: 45

    click_button 'submit'

    expect(page).to have_content('living room')
    expect(page).to have_content('contained space')
    expect(page).to have_content(45)
  end
end