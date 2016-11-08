require "docking_station"

describe DockingStation do

  describe "should respond to" do
    subject { docking_station = DockingStation.new }
    it { is_expected.to respond_to(:release_bike)}
  end

  describe "it gets a bike and checks if it's working" do
    subject { bike = DockingStation.new.release_bike;  bike.working?}
    it {is_expected.to be true}
  end
end
