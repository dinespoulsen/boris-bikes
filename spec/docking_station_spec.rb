require 'docking_station'

describe DockingStation do
=begin
  it 'releases a bike when run release_bike' do
    expect(DockingStation).to respond_to(release_bike)
  end
=end
  it { is_expected.to respond_to(:release_bike)}
end
