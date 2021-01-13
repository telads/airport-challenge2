require './lib/airport.rb'
require './lib/plane.rb'

describe 'an airport' do
  it 'can land a plane' do
    airport = Airport.new
    expect(airport.land).to eq ["plane1"]
  end


end
