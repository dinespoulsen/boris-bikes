require "./lib/bike.rb"

class DockingStation
attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bikes.push(bike)
  end

  def check(bike)
    @bikes.include?(bike)
  end

end
