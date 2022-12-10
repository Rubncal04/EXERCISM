# frozen_string_literal: true

# This function returns the Hamming distance
class Hamming
  def self.compute(strand_one, strand_two)
    distance = 0
    raise ArgumentError if strand_one.length != strand_two.length

    strand_one.size.times do |s|
      distance += 1 if strand_one[s] != strand_two[s]
    end
    distance
  end
end
