# frozen_string_literal: true

# This class returns a boolean value
class Luhn
  def self.valid?(number)
    number = number.gsub(' ', '').chars.reverse
    return false unless number.length > 1
    return false if number.any?(/[[:alpha:]]/)

    luhn = []
    number.each_with_index do |n, i|
      n = n.to_i
      n *= 2 if i.to_i.odd?
      n -= 9 if n > 9
      luhn << n
    end
    (luhn.sum % 10).zero?
  end
end
