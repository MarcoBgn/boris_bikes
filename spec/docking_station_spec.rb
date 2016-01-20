require 'docking_station'

describe DockingStation do
	it {is_expected.to respond_to :release_bike}
	it "releases working bike" do
		bike = subject.release_bike
		expect(bike).to be_working
	end
	
	it "return bike has one argument" do
		expect(subject).to respond_to(:dock).with(1).argument
	end

	it "docks a bike" do
		bike = Bike.new
		expect(subject.dock(bike)).to eq bike
	end
end