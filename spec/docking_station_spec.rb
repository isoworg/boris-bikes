require 'DockingStation'

describe DockingStation do

  it "releases a bike" do
    station = DockingStation.new
    expect(station.release_bike).to eq(:bike)
  end

end