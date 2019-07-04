require './lib/models/request.rb'

RSpec.describe Request do

  describe '#.create' do
    it 'create a request' do
      request = Request.create
      
      expect(request).to be_instance_of('Request')
    end
  end
end