# frozen_string_literal: true

# This class lets us know what is the sound a water drop when this falls
class Raindrops
  def self.convert(number)
    raindrop_sounds = []

    raindrop_sounds << 'Pling' if (number % 3).zero?

    raindrop_sounds << 'Plang' if (number % 5).zero?

    raindrop_sounds << 'Plong' if (number % 7).zero?

    raindrop_sounds << number if number % 3 != 0 && number % 5 != 0 && number % 7 != 0

    raindrop_sounds.join('')
  end
end
