require './lib/airport'


describe 'airport' do
  let (:airport) {Airport.new(:capacity => 6)}
  let (:plane) {Plane.new}

  it "should allow setting airport capacity on initializing" do
    expect(airport.capacity).to eq(6)
  end

  it "should not accept the plane if the weather is stormy" do
    expect(airport.planescount).to eq(0)
    # make sure the weather is stormy
    AirTraffic.stub(:weather).and_return(:stormy)
    airport.dock(plane)
    expect(airport.planescount).to eq(0)
  end
    it "should not allow a plane to take off if the weather is stormy" do
      airport.hasplane(plane)
      expect(airport.planescount).to eq(1)
      AirTraffic.stub(:weather).and_return(:stormy)
      airport.takeoff(plane)
      expect(airport.planescount).to eq(1)
  end

  it "can let a plane land" do
    expect(airport.planescount).to eq(0)
    AirTraffic.stub(:weather).and_return(:sunny)
    airport.dock(plane)
    expect(airport.planescount).to eq(1)
    
  end
    it "can let a plane take off" do
    #expect(airport.planescount).to eq(1)
    AirTraffic.stub(:weather).and_return(:sunny)
    airport.takeoff(plane)
    expect(airport.planescount).to eq(0)
  end
  it "cannot land a plane if airport is full" do
    expect(airport).not_to be_full
  end

end