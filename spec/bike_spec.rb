require 'Bike'

describe Bike do
  
  it "works" do
    expect(subject).to respond_to(:working?)
  end

  it "works by default" do
    expect(Bike.new).to be_working
  end

end