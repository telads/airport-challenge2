class Airport
  attr_reader :hangar

  def initialize(hangar = [], stormy = false, capacity = 10)
    @hangar = hangar
    @stormy = stormy
    @capacity = capacity
  end


  def land(plane)
    if @stormy
      @hangar
    elsif @hangar.length >= @capacity
      "airport full, cannot land"
    else
      @hangar.push(plane)
      return @hangar
    end
  end

  def take_off(plane)
    if @stormy
      @hangar
    else
      @hangar.delete(plane)
      return @hangar
    end
  end
  
end
