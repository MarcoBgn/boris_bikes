
require './lib/docking_station'

class Van

 attr_accessor :units
	
	 def initialize 
	   @units = []
	 end
   
   
   

	 def collect(station)
    station.bikes.each {|bike| @units << bike if bike.working == false }.delete_if {|bike| bike.working == false }
    raise "No bikes available" if @units.size == 0
    "Collected #{@units.size} #{bike_num}"
	 end

	private 
  
  def bike_num
    return "bikes" if @units.size > 1
    "bike"
  end

	#def broken?
	#bike.working == false
  #end


end