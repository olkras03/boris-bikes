require 'dockingstation.rb'
require 'bike.rb'

describe DockingStation do
  it 'should respond to the method release_bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
   end
  
  it {is_expected.to respond_to(:release_bike)}

  it {is_expected.to respond_to(:dock)}

  it 'should be able to dock a bike' do
    docking_station = DockingStation.new
    bike = double("Bike")
    expect(docking_station).to receive(:dock).with(bike)
  end

  it 'should release a bike object' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_instance_of(Bike)
  end

  it "raises an error if bike is unavailable" do
    expect
  end
end