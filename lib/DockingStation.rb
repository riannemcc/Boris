require_relative 'Bike.rb'

class DockingStation
attr_reader :bike

  def initialize
    @bike_dock = []
  end

  def release_bike
    if @bike_dock.count == 0
      raise 'No bikes available'
    else
      bike
    end
  end

  def dock(bike)
    if @bike_dock.count < 20
      @bike_dock << bike
    else
      raise "Full dock"
    end
  end

end
