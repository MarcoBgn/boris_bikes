class DockingStation
  
  attr_reader :bikes
  
  def initialize(bikes=[])
    @bikes = bikes
  end
  
  def release_bike
    @bikes.pop
  end
  
  def dock_bike(bike)
    @bikes << bike
  end
end