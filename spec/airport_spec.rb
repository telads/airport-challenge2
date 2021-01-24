require './lib/airport.rb'
require './lib/plane.rb'

describe 'an airport' do
  it 'can land a plane' do
    airport = Airport.new
    plane1 = "plane1"
    expect(airport.land(plane1)).to eq ["plane1"]
  end

  it 'can land plane 1 and plane 2' do
    airport = Airport.new
    airport.land("plane1")
    plane2 = "plane2"
    airport.land("plane2")
    expect(airport.hangar).to eq ["plane1", "plane2"]
  end

  it 'can take off a plane' do
    airport = Airport.new
    plane1 = "plane1"
    airport.land(plane1)
    expect(airport.take_off(plane1)).to eq []
  end

  it 'can take off another plane' do
    airport = Airport.new
    plane1 = "plane1"
    plane2 = "plane2"
    airport.land(plane1)
    airport.land(plane2)
    expect(airport.take_off(plane2)).to eq [plane1]
  end

  it 'can not take off a plane when stormy' do
    plane1 = "plane1"
    airport = Airport.new([plane1], true)
    expect(airport.take_off(plane1)).to eq [plane1]
  end

  it 'cannot land a plane when stormy' do
    plane1 = "plane1"
    plane2 = "plane2"
    airport = Airport.new([plane1], true)
    expect(airport.land(plane2)).to eq [plane1]
  end

    it 'cannot land a plane when the airport is full' do
      plane1 = "plane1"
      airport = Airport.new
      11.times { airport.land(plane1) }
      expect(airport.land(plane1)).to eq "airport full, cannot land"
    end

    it 'can override the system capacity' do
      airport = Airport.new([], false, 0)
      plane1 = "plane1"
      expect(airport.land(plane1)).to eq "airport full, cannot land"
    end

end
