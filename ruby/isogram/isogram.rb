# frozen_string_literal: true

# Class isogram with isogram? method that returns boolean if word is or isn't an isogram
class Isogram
  def self.isogram?(input)
    input = input.split('')
    count = 0
    letter_group = []
    input.each do |i|
      i = i.downcase
      if !letter_group.include?(i) || i == ' ' || i == '-'
        letter_group << i
      else
        count += 1
      end
    end
    !count.positive? || letter_group.empty?
  end
end
