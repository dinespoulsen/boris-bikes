require "bike"

describe Bike do
  it { is_expected.to respond_to :report_broken }

  it { is_expected.to respond_to :broken}

  it 'is working at the start' do
    bike = Bike.new
    expect(bike.broken).to eq false
  end

  it 'reports that a bike is broken' do
    bike = Bike.new
    bike.report_broken
    expect(bike.broken).to eq true
  end

end
