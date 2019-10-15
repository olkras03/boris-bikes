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
    bike = docking_station.release_bike
    expect(docking_station.dock(bike)).to eq(true)
  end

  it 'should release a bike object' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    docking_station.dock(bike)
    expect(docking_station.release_bike).to be_a(Bike)
  end

  it "raises an error if bike is unavailable" do
    docking_station = DockingStation.new
    x = docking_station.release_bike
    test = []
    (1..20).each do | y | 
      test.append(docking_station.bikes.pop)
    end
    expect {docking_station.release_bike}.to raise_error "No bikes available"
  end

  it "raises an error if no space is available for the bike" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect {docking_station.dock(bike)}.to raise_error "No station space available"
  end



end