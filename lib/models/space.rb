# require 'data_mapper'
# require './database_connection_setup.rb'

class Space
  include DataMapper::Resource

    property :id,           Serial
    property :name,         String
    property :description,  String
    property :price,        Integer

end

# DataMapper.finalize
# DataMapper.auto_upgrade!
  