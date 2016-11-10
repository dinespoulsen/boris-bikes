require_relative './bike.rb'

class DockingStation

attr_reader :bikes

attr_accessor :capacity

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    working_bikes = @bikes.select {|bike| bike.working?}
    working_bike = working_bikes.pop
    @bikes.delete(working_bike)
    return working_bike
  end

  def dock(bike)
    fail "dock is full" if full?
    @bikes << bike
  end

private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    bikes.select {|bike| bike.working?}.empty?
  end


end
