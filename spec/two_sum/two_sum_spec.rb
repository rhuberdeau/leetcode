require_relative "../../two_sum/two_sum"

RSpec.describe TwoSum do
  it "returns the indices of the first numbers that add up to the target" do
    expect(TwoSum.two_sum([1,3,5,6,2], 8)).to eql([1,2])
  end
end
