class Airport
  attr_reader :hangar
  CAPACITY = 10

  def initialize(hangar = [], stormy = false)
    @hangar = hangar
    @stormy = stormy
    @capacity = CAPACITY
  end


  def land(plane)
    if @stormy
      @hangar
    elsif @hangar.length > @capacity
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

    def override_capacity(capacity)
      if capacity != @capacity
        "capacity overridden"
      else
        @capacity = capacity
      end
    end
end
