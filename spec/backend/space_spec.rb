require './lib/models/space.rb'

RSpec.describe Space do

  describe '#.create' do
    it 'create a request' do
      space = Space.create(name: 'space', description: 'my home', price: 45)
      
      expect(space).to be_instance_of(Space)
      expect(space.name).to eq('space')
      expect(space.description).to eq('my home')
      expect(space.price).to eq(45)
    end
  end
end