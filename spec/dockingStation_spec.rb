require "dockingStation.rb"
  


describe DockingStation do
    
  it "Responds to .release_bike" do
    expect(subject).to respond_to(:release_bike)
  end
  it "#release_bike" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
  end
  it "Responds to .dock_bike" do
    expect(subject).to respond_to(:dock_bike)
  end
  it "Can access the @bikes instance variable" do
    expect(subject.bikes).to eq []
  end
  
 it "Adds an instance of Bike to an instance of DockingStation using .dock_bike" do
    expect(subject.dock_bike(subject.release_bike)).to eq subject.bikes
  end
  
end