require "van"

describe Van do

describe "loading bike" do
  it "should return the loaded bike" do
    bike = Bike.new
    expect(subject.load(bike)).to eq bike
  end

  it "should collect bike from docking station" do
    station = DockingStation.new
    expect(subject.collect_bikes(station)).to eq bike
  end
end


end
