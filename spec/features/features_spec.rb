require 'DockingStation'
require 'Bike'

describe 'Docking Station releases' do 
  it 'a working bike' do
    station = DockingStation.new
    bike    = Bike.new
    station.dock(bike)
    expect(station.bikes).to include(bike)
  end
end