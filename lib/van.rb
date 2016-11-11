require_relative "docking_station"
require_relative "garage"

class Van

attr_accessor :bikes

def initialize
 @bikes = []
end

def collect(place)
  if place.is_a?(Garage)
    fixed_bikes = place.bikes.select {|bike| !bike.broken}
    place.bikes.select! {|bike| bike.broken}
    @bikes = fixed_bikes
  else
    broken_bikes = place.bikes.select {|bike| bike.broken }
    place.bikes.select! {|bike| !bike.broken }
    @bikes = broken_bikes
  end
end

def deliver(place)
  if place.is_a?(DockingStation)
    bikes.each {|bike| place.bikes << bike if bike.broken == false}
    @bikes = []
    place.bikes
  else
    bikes.each {|bike| place.bikes << bike if bike.broken == true}
    @bikes = []
    place.bikes
  end
end

end
