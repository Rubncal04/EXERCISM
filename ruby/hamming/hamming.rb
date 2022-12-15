# frozen_string_literal: true

# This function returns the Hamming distance
class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError if strand_one.length != strand_two.length

    (0..strand_one.size).count { |i| + 1 if strand_one[i] != strand_two[i] }
  end
end
