# Frozen_string_literal: true

# This class returns us what is the moment has passed after a gigasecond
class Gigasecond
  GIGASECONDS = 10**9

  def self.from(moment)
    moment + GIGASECONDS
  end
end
