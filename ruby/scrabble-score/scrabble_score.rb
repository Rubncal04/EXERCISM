# frozen_string_literal: true

# This class returns scrabble score for a word
class Scrabble
  attr_accessor :string

  ONE_POINT = %w[A E I O U L N R S T].freeze
  TWO_POINTS = %w[D G].freeze
  THREE_POINTS = %w[B C M P].freeze
  FOUR_POINTS = %w[F H V W Y].freeze
  FIVE_POINTS = %w[K].freeze
  EIGHT_POINTS = %w[J X].freeze
  TEN_POINTS = %w[Q Z].freeze

  def initialize(string)
    @string = string.upcase
  end

  def score
    points = 0
    @string.chars.each do |letter|
      if ONE_POINT.include?(letter)
        points += 1
      elsif TWO_POINTS.include?(letter)
        points += 2
      elsif THREE_POINTS.include?(letter)
        points += 3
      elsif FOUR_POINTS.include?(letter)
        points += 4
      elsif FIVE_POINTS.include?(letter)
        points += 5
      elsif EIGHT_POINTS.include?(letter)
        points += 8
      elsif TEN_POINTS.include?(letter)
        points += 10
      end
    end
    points
  end
end
