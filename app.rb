require 'sinatra/base'
# require "sinatra/json"
require './database_connection_setup.rb'
# require './lib/models/user.rb'

class MakersBnB < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end 

  get '/sign_in' do
    erb :sign_in
  end

  post '/get_data' do
    User.create(name: params[:name], email: params[:email], password: params[:password])
    # Place.create(name: params[:place], description: params[:description], price: params[:price], availability: params[:availability])
    redirect '/makersbnb'
  end 

  # get '/api' do
  #   @users = User.all
  #   erb :api
  # end

  # get '/makersbnb' do
  #   erb :home
  # end

  get '/makersbnb/:id' do
    @users = User.all
    erb :api
  end

  run! if app_file == $0
end