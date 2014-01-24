#!usr/bin/ruby 

class Airport

require 'Plane'

DEFAULT_CAPACITY = 20

def initialize(options = {})

  self.capacity = options.fetch(:capacity, capacity)
  end
def capacity
  @capacity ||= DEFAULT_CAPACITY
end
def capacity=(number)
    @capacity = number
end


end
