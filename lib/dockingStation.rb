class DockingStation
  
  attr_reader :bikes
  
  def initialize(bikes=[])
    @bikes = bikes
  end
  
  def release_bike
    empty? ? raise("No Bikes Available") : @bikes.pop
  end
  
  def dock_bike(bike)
  
    full? ? raise("The Station is Full") : @bikes << bike
  end
  
private
  def full?
    @bikes.size > 20 ? true : false
  end
  
  def empty?
    @bikes == [] ? true : false
  end

end

