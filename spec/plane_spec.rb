require './lib/plane'

describe 'plane'  do 
    let (:plane) {Plane.new}
    

  it "is flying when created" do
    expect(plane).not_to be_landed
  end 
  it "should be able to land" do
    plane.land
    expect(plane).to be_landed
  end
  it "should have status flying when in the air" do
    #we have a plane
    #its not landed, therefore its flying
    #expect status to be flying, else landed
    plane.flying
    expect(plane.landed?).to eq(false)

    
  end
  it "should be able to take off" do
    plane.land
    plane.takeoff
    expect(plane).not_to be_landed
  end

end
