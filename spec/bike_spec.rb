require "bike"

describe Bike do

  it 'is working at the start' do
    bike = Bike.new
    expect(bike.broken).to eq false
  end

  it 'reports that a bike is broken' do
    subject.report_broken
    expect(subject.broken).to eq true
  end

end
