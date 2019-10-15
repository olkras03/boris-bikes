require_relative 'bike.rb'

class DockingStation
 attr_reader :bikes
 capacity = 20
  def initialize
    @count = 1
    @bikes = Array.new(20, Bike.new)
  end
  def release_bike
    if @bikes.length > 0 
      bike = @bikes.pop 
      return bike
    else
      raise "No bikes available"
    end
  end
  def dock(bike)
    if @bikes.length < 20
      @bikes.append(bike)
      return true
    else 
      raise "No station space available"
    end
  end

end



