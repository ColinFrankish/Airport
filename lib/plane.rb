#!usr/bin/ruby 

class Plane

  def intialize
    flying
  
  end

  def landed?
    !!@landed
  end

  def land
    @landed = true
  end

  def takeoff
    @landed = false
  end

  def flying?
    # you meant a comparison here, that's == (2 equal signs) and not = (1 equal sign)
    # However, the method should return a boolean value (true or false)
    # if @landed == false
    #   return "status: Flying"
    # else
    #   "status: Landed"
    # end
    !@landed # yes, as simple as that: flying is opposite of @landed
  end


end