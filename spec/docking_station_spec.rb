require 'docking_station.rb'
require 'bike.rb'
describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it 'releases working bikes' do
    bike = subject.release_bike
    puts "=" * 20
    puts subject
    puts "=" * 20
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }
end
