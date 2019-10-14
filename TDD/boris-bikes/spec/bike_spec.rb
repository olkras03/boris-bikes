require 'bike.rb'

describe Bike do
  it "should respond to the method working?" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  it {is_expected.to respond_to(:working?)}
end