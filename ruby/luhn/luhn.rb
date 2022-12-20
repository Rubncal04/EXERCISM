# frozen_string_literal: true

# This class returns a boolean value
class Luhn
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.valid?(number)
    number = new(number)
    return false unless number.convert_string_to_array.length > 1

    return false if number.convert_string_to_array.any?(/[[:alpha:]]/)

    number.divisible_by_ten
  end

  def convert_string_to_array
    @number.gsub(' ', '').chars.reverse
  end

  def divisible_by_ten
    luhn = []
    convert_string_to_array.each_with_index do |n, i|
      n = n.to_i
      n *= 2 if i.to_i.odd?
      n -= 9 if n > 9
      luhn << n
    end
    (luhn.sum % 10).zero?
  end
end
