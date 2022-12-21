# frozen_string_literal: true

# This class returns a boolean value
class Luhn
  attr_reader :number

  def self.valid?(number)
    new(number).valid?
  end

  def initialize(number)
    @number = number.gsub(' ', '')
  end

  def valid?
    return false unless valid_format?

    (luhn_calculation % 10).zero?
  end

  def valid_format?
    number.length > 1 && !number.match?(/[[:alpha:]]/)
  end

  def luhn_calculation
    luhn = []
    number.reverse.each_char.with_index do |n, i|
      n = n.to_i
      n *= 2 if i.to_i.odd?
      n -= 9 if n > 9
      luhn << n
    end
    luhn.sum
  end
end
