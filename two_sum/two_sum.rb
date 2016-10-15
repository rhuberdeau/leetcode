class TwoSum
  # param {Array[]}, numbers
  # param {Integer}, target number
  # return {Array} of zero based indices
  def self.two_sum(nums, target)
    nums.each do |val|
      array_with_val_removed = nums - [val]
      array_with_val_removed.each do |other_val|
        return [nums.index(val), nums.index(other_val)] if val + other_val == target
      end
    end
  end
end
