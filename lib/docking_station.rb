require_relative 'bike'
class DockingStation

 DEFAULT_CAPACITY = 20

 attr_reader :capacity

 def initialize(capacity = DEFAULT_CAPACITY)
   @bikes = []
   @capacity = capacity
 end

 def release_bike
  @working_bikes = bikes.select { |bike| !bike.broken }
  fail 'No bikes available' if empty?
  working_bike = @working_bikes.pop
  @bikes.delete(working_bike)
 end

 def dock(bike)
  fail "Dock is full" if full?
  bikes << bike
 end


#private

attr_reader :bikes

def full?
  bikes.count >= capacity
end

def empty?
  @working_bikes.empty?
end

end
