require_relative "docking_station"

class Van

attr_accessor :bikes

def initialize
 @bikes = []
end

def collect(docking_station)
  broken_bikes = docking_station.bikes.select {|bike| bike.broken }
  docking_station.bikes.select! {|bike| !bike.broken }
  @bikes = broken_bikes
end

def deliver(garage)
  garage_bikes = bikes.each {|bike| garage.bikes << bike}
  @bikes = []
  garage_bikes
end

end
