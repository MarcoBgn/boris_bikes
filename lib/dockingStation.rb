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
  
    if @bikes.size > 20
      raise "The Station is Full"
    else
    @bikes << bike
    end
  end

end

