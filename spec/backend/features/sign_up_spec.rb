require './app.rb'

RSpec.feature 'Sign in' do

  scenario 'it displays hello world' do
    visit '/'
    expect(page).to have_text('hello world')
  end
end