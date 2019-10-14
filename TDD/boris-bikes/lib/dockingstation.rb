require_relative 'bike.rb'

class DockingStation
 attr_reader :bike
  def release_bike
    new_bike = Bike.new
    return new_bike
  end
  def dock (bike)
    @bike = bike
  end

end

