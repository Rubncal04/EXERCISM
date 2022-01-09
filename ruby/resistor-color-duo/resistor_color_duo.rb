# frozen_string_literal: true

# Build resistor duo using a Raspberry Pi
class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(value_of_color)
    "#{COLORS.index(value_of_color[0])}#{COLORS.index(value_of_color[1])}".to_i
  end
end
