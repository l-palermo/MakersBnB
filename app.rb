require 'sinatra/base'
require 'json'

class MakersBnB < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end 

  get '/sign_in' do
    erb :sign_in
  end

  get '/makersbnb' do
    erb :home
  end

  run! if app_file == $0
end