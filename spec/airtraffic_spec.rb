require './lib/airtraffic'
require './lib/plane'

describe 'AirTraffic' do
let (:plane) {Plane.new}
let (:airport) {Airport.new}
#let (:weather) {Weather.new}

  it "a plane cannot take off if the weather is stormy" do
    
    weather = double :weather
    #airport should not release plane if weather stormy
    airport
    
    #the plane cannot take off

    #expect 

  end

end