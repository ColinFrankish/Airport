#!usr/bin/ruby 

class Plane

  def intialize
  flying
  end

  def landed?
   @landed
  end

  def land
    @landed = true
  end

  def takeoff
    @landed = false
  end

   

end