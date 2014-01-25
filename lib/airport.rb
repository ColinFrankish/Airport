#!usr/bin/ruby 
require_relative 'airtraffic'
#require_relative 'plane'
class Airport

# include AirTraffic
  

DEFAULT_CAPACITY = 10

  def initialize(options = {})

  self.capacity = options.fetch(:capacity, capacity)
  end
  def capacity
  @capacity ||= DEFAULT_CAPACITY
  end
  def capacity= (number)
    @capacity = number
  end
  def hasplane(plane)
    @planes = [1]
  end
  def planes
    @planes ||= []
  end 
  def planescount
    planes.count
  end
  def dock(plane)
    raise "The airport is full you cannot land!" if full?    
    planes << plane if AirTraffic.weather == :sunny
  end
  def takeoff(plane)
    planes.delete(plane) if AirTraffic.weather == :sunny
  end
  def full? 
    planescount == capacity
  end
end
