require './lib/bike.rb'

class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

	def release_bike
    working_bike = @bikes.delete( @bikes.find { |bike| bike.working } )
    raise 'No bikes available' unless working_bike
    working_bike
  end

	def dock(bikes)
    full? ? raise("Docking Station Full") : @bikes << bikes
  end

	attr_reader :bikes, :capacity

  private

  def full?
   return true if @bikes.length >= @capacity
  end

  def empty?
    return true if empty?
  end

end
