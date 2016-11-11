require "van"
require "bike"
require "docking_station"
require "garage"

describe Van do
    it "should collect only broken bikes from docking stations" do
    docking_station = DockingStation.new
    bike = Bike.new
    bike2 = Bike.new
    bike2.report_broken
    bikes = [bike, bike2]
    docking_station.dock(bike)
    docking_station.dock(bike2)
    expect(subject.collect(docking_station)).to eq [bike2]
  end

  it "should deliver to the garage" do
    docking_station = DockingStation.new
    garage = Garage.new
    bike = Bike.new
    bike.report_broken
    bikes = [bike]
    docking_station.dock(bike)
    subject.collect(docking_station)
    expect(subject.deliver(garage)).to eq bikes
  end

  it "should collect the working bikes from the garage" do
    garage = Garage.new
    bike1 = Bike.new
    bike2 = Bike.new
    bike2.report_broken
    garage.bikes << bike1 << bike2
    expect(subject.collect(garage)).to eq [bike1]
  end

  it "should deliver working bikes to the docking station" do
    bike1 = Bike.new
    bike2 = Bike.new
    bike1.report_broken
    subject.bikes << bike1 << bike2
    docking_station = DockingStation.new
    expect(subject.deliver(docking_station)).to eq [bike2]
  end
end
