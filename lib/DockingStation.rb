require_relative 'Bike.rb'

class DockingStation
attr_reader :bike

  def initialize
    @bike_dock = []
  end

  def release_bike
    if empty?
      raise 'No bikes available'
    else
      bike
    end
  end

  def dock(bike)
    if full?
      raise "Full dock"
    else
      @bike_dock << bike
    end
  end

  private

  def full?
    if @bike_dock.count >= 20
      true
    else
      false
    end
  end

private

  def empty?
    if @bike_dock.count == 0
      true
    else
      false
    end
  end

end
