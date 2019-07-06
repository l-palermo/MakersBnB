# require './database_connection_setup.rb'
# require 'data_mapper'

class User
  include DataMapper::Resource

  property :id,         Serial
  property :name,       String
  property :email,      String, required: true
  property :password,   String, required: true

  has n, :spaces
  
end

# DataMapper.finalize
# DataMapper.auto_upgrade!