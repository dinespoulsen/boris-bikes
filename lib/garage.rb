require_relative "bike"


class Garage

  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def fix(bikes)
    fixed_bikes = bikes.each {|bike| bike.broken = false }
    fixed_bikes.all? {|bike| bike.broken == false }
  end
end
