require "bike"

describe Bike do
  it {is_expected.to respond_to(:working?)}

describe "check if a bike is working" do
  it "shall return true if bike is broken" do
    expect(subject.working?).to eq true
  end
end

describe "report if a bike is broken" do
  it "shall return false when bike is reported broken" do
    expect(subject.report_broken).to eq false
  end
end

describe "check if a bike is broken" do
  it "should return false if bike is broken" do
    bike = Bike.new
    bike.report_broken
    expect(bike.working?).to eq false
  end
end

end
