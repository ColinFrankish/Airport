require './lib/airport'


describe 'airport' do
  let (:airport) {Airport.new(:capacity => 15)}
  let (:plane) {Plane.new}

  it "should allow setting airport capacity on initializing" do
    expect(airport.capacity).to eq(15)
  end

  it "can let a plane land" do
    #plane.flying
    #airport.land(plane)
    #i would expect the airport to have 1 landed plane
    #expect(airport.)
    #I would expect flying planes to be -1 
  end

end