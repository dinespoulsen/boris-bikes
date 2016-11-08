require "bike"

describe Bike do
  subject{ bike = Bike.new }

  it{ is_expected.to respond_to(:working?)}

end
