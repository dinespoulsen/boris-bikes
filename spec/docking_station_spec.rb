require 'docking_station.rb'
require 'bike.rb'
describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }


    describe '#release_bike' do
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end

      it "raises an error when there are no bikes available" do
        expect { subject.release_bike }.to raise_error "No bikes available"
      end
    end

    describe '#dock(bike)' do
      it 'raises an error when docking station is full' do
        bike = Bike.new
        bike2 = Bike.new
        station = DockingStation.new
        station.dock(bike)
        expect {station.dock(bike2)}.to raise_error "dock is full"
      end
    end


end
