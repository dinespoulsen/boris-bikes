require "garage"

describe Garage do
  it "should store bikes delivered by the van" do
    van = Van.new
    bike = Bike.new
    bike.report_broken
    van.bikes = [bike]
    van.deliver(subject)
    expect(subject.bikes).to eq [bike]
  end


end
