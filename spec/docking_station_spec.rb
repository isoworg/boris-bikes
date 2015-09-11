require 'DockingStation'

describe DockingStation do

  let(:working_bike) { double :bike, working?: true }
  let(:broken_bike)  { double :bike, working?: false }
  let(:station)      { DockingStation.new }

  it "can release a bike" do
    expect(subject).to respond_to(:release)
  end

  it "releases a docked bike" do
    station.dock(working_bike)
    expect(station.release).to eq(working_bike)
  end

  it "doesn't release a broken bike" do
    station.dock(broken_bike)
    expect(station.release).to eq("nope")
  end

  it "can dock a bike" do
    expect(subject).to respond_to(:dock)
  end

  it "docks a bike" do 
    station.dock(working_bike)
    expect(station.bikes).to include(working_bike) 
  end

  it "knows whether a particular bike works" do
    expect(station.works?(working_bike)).to be true
  end

  it "knows whether a particular bike doesn't work" do
    expect(station.works?(broken_bike)).to be false
  end

end