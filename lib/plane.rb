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

  def flying
    if @landed = false
      return "status: Flying"
    else
      "status: Landed"
    end
  end


end