require 'docking_station.rb'
require 'bike.rb'
describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }
  let(:bike) { double :bike }
  let(:broken_bike) { double :broken_bike }

    describe '#release_bike' do

      it 'releases a bike' do
        allow_true
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end

      it "raises an error when there are no bikes available" do
        station = DockingStation.new

        expect { station.release_bike }.to raise_error "No bikes available"
      end
    end

    it "releases only a working bike" do
      station = DockingStation.new
      allow_false
      station.dock(broken_bike)
      allow_true
      station.dock(bike)
      expect(station.release_bike).to eq bike
    end

    describe '#dock(bike)' do
      it 'raises an error when docking station is full' do
        station = DockingStation.new
        DockingStation::DEFAULT_CAPACITY.times {station.dock(bike)}
        expect {station.dock(bike)}.to raise_error "dock is full"
      end
    end

    describe 'changing capacity of docking station' do
      it 'should return the new capacity' do
        station = DockingStation.new
        expect(station.capacity).to eq 20
      end
      it 'user should be able to change capacity' do
        station = DockingStation.new(23)
        expect(station.capacity).to eq 23
      end
    end

def allow_true
  allow(bike).to receive(:working?).and_return(true)
end

def allow_false
  allow(broken_bike).to receive(:working?).and_return(false)
end

end
