require './lib/docking_station.rb'

describe 'docks a certain number of bikes' do
  it 'docks twenty bikes' do
    station = DockingStation.new
    20.times { station.dock(double(:bike)) }  
    expect(station.bikes.length).to eq 20
  end
end

describe 'user can set capacity' do
  it 'sets capacity' do
    docking_station = DockingStation.new(15)
    expect(docking_station.capacity).to eq 15
  end

  it 'has a default capacity' do
    docking_station = DockingStation.new
    expect(docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
end
 
describe 'broken bikes' do 
  it 'bike can be reported broken' do
    bike = double(:bike)
    bike.report_broken
    expect(bike.working).to eq false
   end
   it 'does not release broken bikes' do
     bike = double(:bike)
     bike.report_broken
     station = DockingStation.new
     station.dock(bike)
     expect { station.release_bike }.to raise_error "No bikes available"
   end
end

describe 'Van' do
  it 'collects broken bikes from a station' do
  van = Van.new         #still have to substitute with doubles
  #######################assuming that the van is called when needed
  van.collect_bikes(station)   #the van collects the bikes at the specific station
  expect(van.bikes).to eq 3
end
  
end