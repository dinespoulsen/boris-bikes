require_relative "bike"


class Garage

  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def fix_bikes
    bikes.each {|bike| bike.broken = false }
    bikes.all? {|bike| bike.broken == false }
  end
end
