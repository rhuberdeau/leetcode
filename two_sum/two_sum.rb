class TwoSum
  attr_reader :array, :target

  # param {Array[]}, numbers
  # param {Integer}, target number
  def initialize(array, target)
    @array  = array
    @target = target
  end

  # return {Array} of zero based indices
  def run
    hash = {}
    array.each_with_index do |value, index|
      if hash.has_value?(target-value)
        return [index, hash.key(target-value)].sort
      else
        hash[index] = value
      end
    end
  end
end
