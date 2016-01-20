class DockingStation
  
  attr_reader :bikes
  
  def initialize(bikes=[])
    @bikes = bikes
  end
  
  def release_bike
    if @bikes == []
      raise "No Bikes Available"
    else
    @bikes.pop
  end
end
  
  def dock_bike(bike)
    raise "The Station is Full" unless @bikes == []
    @bikes << bike
  end
end