require "garage"
require "bike"
require "van"

describe Garage do
  it "should store bikes delivered by the van" do
    van = Van.new
    bike = Bike.new
    bike.report_broken
    van.bikes = [bike]
    van.deliver(subject)
    expect(subject.bikes).to eq [bike]
  end

  it "should fix bikes" do
    bike = Bike.new
    bike.report_broken
    subject.bikes << bike
    expect(subject.fix_bikes).to eq true
  end


end
