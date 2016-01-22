require "bike"
require "dockingStation"


describe "++Feature test++" do 
  it "Tests the functionality of the Docking Station and Bikes" do
    station = DockingStation.new
    expect { station.release_bike }.to raise_error "No Bikes Available"
    bike1 = Bike.new
    station.dock_bike(bike1)
    expect(station.bikes.last).to eq bike1
    expect { 20.times { station.dock_bike(Bike.new) }}.to raise_error "The Station is Full"
    expect { 21.times { station.release_bike}}.to raise_error "No Bikes Available"
  end
end