require "van"
require "bike"
require "docking_station"

describe Van do
  it "should collect from bikes from docking stations" do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(subject.collect(docking_station)).to eq [bike]
  end

end
