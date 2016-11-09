require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }


  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when no bike is available' do
      expect {subject.release_bike}.to raise_error("no bikes available")
    end
  end

  describe '#dock(bike)' do
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end


    it 'raises an error when station is full' do
      20.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error("Docking station is full")
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

end
