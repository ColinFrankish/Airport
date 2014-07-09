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

  # it looks like you wanted this method to answer a yes/no question: does the airport have a plane?
  def has_plane(plane)
    @planes.include?(plane)
  end

  def planes
    @planes ||= []
  end 

  def planes_count
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
