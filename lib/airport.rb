class Airport
  attr_reader :hangar


  def initialize(stormy = false)
    @hangar = []
    @stormy = stormy
  end


  def land(plane)
    @hangar.push(plane)
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
