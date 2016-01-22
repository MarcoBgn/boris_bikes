require 'van'

describe Van do
	let(:station) { double(:dockingstation)}  
	let(:bike) { double(:bike)} 
	let(:van) { double(:van)} 
	it "creates a new instance of the van class" do
	expect(subject.class).to be Van
	end
	it {is_expected.to respond_to(:collect).with(1).argument}
	  

#describe '#check_status' do
#it "checks if broken bikes in station" do

	describe '#collect' do
		it 'collects a broken bike at station' do
      allow(bike).to receive(:report).and_return(false)
      allow(bike).to receive(:working).and_return(true)
	    bike_b = bike
	    bike_b.report
      allow(station).to receive(:dock).and_return(bike_b)
		  station.dock(bike_b)
      allow(van).to receive(:collect).with(station).and_return("Collected 1 bike")
    	expect(van.collect(station)).to eq "Collected 1 bike"
    	end

    it 'collects broken bikes and leaves working bikes' do 
       allow(station).to receive(:dock).with(bike).and_return(bike)
    	station.dock(bike)
    	bike_b = double(:bike)
      allow(bike_b).to receive(:report).and_return(false)
      allow(bike_b).to receive(:working).and_return(false)
    	bike_b.report 
      allow(station).to receive(:dock).with(bike_b).and_return(bike_b)
    	station.dock(bike_b)
      allow(van).to receive(:collect).with(station).and_return("Collected 1 bike")
    	expect(van.collect(station)).to eq "Collected 1 bike"
    end	
    
    it "returns an error when no bikes are collected" do
      allow(station).to receive(:dock).with(bike).and_return(bike)
      station.dock(bike)
      allow(van).to receive(:collect).with(station).and_raise("No bikes available")
      expect { van.collect(station) } .to raise_error "No bikes available"
    end
    
	end

end	


