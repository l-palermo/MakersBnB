require './lib/models/user.rb'

RSpec.describe User do

  describe '#.create' do
    it 'craete a user' do
      User.create(name: 'name', email: 'nnn@mail.com', password: 'ccffrr')
      user = User.all[0]
      
      expect(user.email).to eq('nnn@mail.com')
      expect(user.password).to eq('ccffrr')
      expect(user.name).to eq('name')
    end
  end
end

