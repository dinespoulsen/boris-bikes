require_relative "docking_station"

class Van

attr_reader :bikes

def initialize
 @bikes = []
end

def collect(docking_station)
  broken_bikes = docking_station.bikes.select {|bike| bike.broken }
  docking_station.bikes.select! {|bike| !bike.broken }
  @bikes = broken_bikes
end

end
