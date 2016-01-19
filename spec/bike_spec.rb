require "bike"

describe Bike do 
  it "responds to .working?" do
    expect(subject).to respond_to(:working?)
  end
  it "Returns true when passed .working?" do
    expect(subject.working?).to eq true
  end
end
