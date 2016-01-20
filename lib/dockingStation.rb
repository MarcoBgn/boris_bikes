class DockingStation
  
  attr_reader :bikes
  
  def initialize(bikes=[])
    @bikes = bikes
  end
  
  def release_bike
    @bikes == [] ? raise("No Bikes Available") : @bikes.pop
  end
  
  def dock_bike(bike)
  
    @bikes.size > 20 ? raise("The Station is Full") : @bikes << bike
  end

end

