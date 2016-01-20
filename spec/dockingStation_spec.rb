require "dockingStation.rb"
  


describe DockingStation do
    
  it "Responds to .release_bike" do
    expect(subject).to respond_to(:release_bike)
  end
  
describe "#release_bike" do
  it "release a bike when at least one bike is docked" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
  end
   it "Raises an error when trying to release a bike when no bikes available " do
     expect { subject.release_bike }.to raise_error "No Bikes Available"
  end
end
  it "Responds to .dock_bike" do
    expect(subject).to respond_to(:dock_bike)
  end
  it "Can access the @bikes instance variable" do
    expect(subject.bikes).to eq []
  end
  
 it "Adds an instance of Bike to an instance of DockingStation using .dock_bike" do
    expect(subject.dock_bike(Bike.new)).to eq subject.bikes
  end
  
end