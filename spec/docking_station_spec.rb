require 'docking_station'
describe DockingStation do
 it { should respond_to :release_bike }

 it { should respond_to(:dock).with(1).argument}

describe 'initialization' do
  subject { DockingStation.new }
  let(:bike) {double (:bike)}
  it "has a default capacity" do
    described_class::DEFAULT_CAPACITY.times do
      subject.dock(bike)
    end
    expect{ subject.dock(bike) }.to raise_error "Dock is full"
  end
end

 describe '#release_bike' do
  it "raises an error when there's no working bike available" do
    bike = double("bike", :report_broken => true, :broken => true)
    bike.report_broken
    subject.dock(bike)
   expect { subject.release_bike }.to raise_error 'No bikes available'
  end
  it "releases only working bikes" do
    bike1 = double("bike1", :broken => false)
    bike2 = double("bike", :report_broken => true, :broken => true)
    bike2.report_broken
    subject.dock(bike1)
    subject.dock(bike2)
    expect(subject.release_bike).to eq bike1
  end
 end

describe "#dock" do
  it "raises an error when the docking station is full" do
  bike = double (:bike)
  subject.capacity.times {subject.dock(bike)}
    expect { subject.dock(bike) }.to raise_error "Dock is full"
  end
end


end
