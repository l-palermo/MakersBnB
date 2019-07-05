require 'sinatra/base'
# require "sinatra/json"
require './database_connection_setup.rb'
# require './lib/models/user.rb'

class MakersBnB < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end 

  get '/sign_up' do
    erb :sign_up
  end

  post '/user_data' do
    user = User.create(name: params[:name], email: params[:email], password: params[:password])
    # space = Space.create(name: params[:name], description: params[:description], price: params[:price])
    session[:current_user] = user.id
    redirect '/makersbnb'
  end

  post '/space_data' do
    space = Space.create(name: params[:name], description: params[:description], price: params[:price])
    redirect '/makersbnb'
  end

  # get '/api' do
  #   @users = User.all
  #   erb :api
  # end

  # get '/makersbnb' do
  #   erb :home
  # end

  get '/makersbnb' do
    @user = User.get(session[:current_user])
    @spaces = Space.all
    erb :home
  end


  run! if app_file == $0
end