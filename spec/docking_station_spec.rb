require 'DockingStation'

describe DockingStation do

  let(:working_bike) { double :bike, works?: true }
  let(:broken_bike)  { double :bike, works?: false }

  it "can release a bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "knows whether a particular bike works" do
    station = DockingStation.new
    expect(station.works?(working_bike)).to be true
  end

  it "knows whether a particular bike doesn't work" do
    station = DockingStation.new
    expect(station.works?(broken_bike)).to be false
  end

end