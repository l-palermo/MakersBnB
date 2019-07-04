require 'data_mapper'
# require './lib/models/message.rb'
require './lib/models/user.rb'

if ENV['ENVIRONMENT'] == 'test'
    DataMapper::setup(:default, "postgres://localhost/makersbnb_test")
    # DataMapper.finalize
    DataMapper.auto_upgrade!
else
    DataMapper::setup(:default, "postgres://localhost/makersbnb")
    # DataMapper.finalize
    DataMapper.auto_upgrade!
end