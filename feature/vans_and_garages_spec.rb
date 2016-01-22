require 'van'
require 'docking_station'

describe "Van:" do
	it "collects a broken bike from station" do
	van = Van.new
	station = DockingStation.new
  station.dock(Bike.new)
  broken_bike = Bike.new
  broken_bike.report
  station.dock(broken_bike)
	van.collect(station)
	expect(van.units.first).to eq broken_bike
	end
  
	
end