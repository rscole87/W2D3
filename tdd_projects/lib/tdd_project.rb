class Array

  def my_uniq
    uniq_array = []

    self.each { |ele| uniq_array << ele if !uniq_array.include?(ele) }

    uniq_array
  end

  def two_sum
    sum = []

    self.each_with_index do |ele1, idx1|
      self.each_with_index do |ele2, idx2|
        sum << [idx1, idx2] if ele1 + ele2 == 0 && idx2 > idx1
      end
    end

    sum
  end

  def my_transpose
    transposed = Array.new(self.length) {Array.new(self.length)}

    self.each_with_index do |sub_arr, i|
      sub_arr.each_with_index do |ele, j|
        transposed[j][i] = ele
      end
    end
    transposed
    # self.transpose
  end
  
end