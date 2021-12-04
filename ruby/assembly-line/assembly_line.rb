# frozen_string_literal: true

# the production of an assembly line in a car factory.
class AssemblyLine
  HOURLY_YIELD = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    @speed * HOURLY_YIELD * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

  private

  def success_rate
    case @speed
    when 1..4
      1.0
    when 5..8
      0.90
    when 9
      0.80
    when 10
      0.77
    end
  end
end
