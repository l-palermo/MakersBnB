require 'sinatra/base'

class MakersBnB < Sinatra::Base
  enable :sessions

  get '/' do 
    'hello world'
  end 

  run! if app_file == $0
end