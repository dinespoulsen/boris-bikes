require_relative "bike.rb"

class Van

attr_reader :bikes

def initialize
 @bikes = []
end

def collect(docking_station)
  docking_station.bikes.each {|bike| @bikes << bike }
end

end
