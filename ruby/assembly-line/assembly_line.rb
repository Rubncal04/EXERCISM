# frozen_string_literal: true

# the production of an assembly line in a car factory.
class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed <= 4
      @speed * 221 * 1.0
    elsif @speed <= 8
      @speed * 221 * 0.90
    elsif @speed == 9
      @speed * 221 * 0.80
    else
      @speed * 221 * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
