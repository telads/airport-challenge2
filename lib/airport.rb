class Airport
  attr_reader :hangar


  def initialize(hangar = [], stormy = false)
    @hangar = hangar
    @stormy = stormy
  end


  def land(plane)
    if @stormy
      @hangar
    else
      @hangar.push(plane)
      @hangar
    end
  end

  def take_off(plane)
    if @stormy
      @hangar
    else
      @hangar.delete(plane)
      @hangar
    end
  end


end
