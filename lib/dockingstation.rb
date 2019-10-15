require_relative 'bike.rb'

class DockingStation
 attr_reader :bike
  def initialize
    @count = 1
    @bike = Bike.new
  end
  def release_bike
    if @count == 1
      @count -= 1
      return @bike
    else
      raise "No bikes available"
    end
  end
  def dock(bike)
    @count += 1
    @bike = bike
  end

end



