# frozen_string_literal: true

# Write your code for the 'Clock' exercise in this file. Make the tests in
# `clock_test.rb` pass.

# To get started with TDD, see the `README.md` file in your
# `ruby/clock` directory.
class Clock
  attr_accessor :hour, :minute

  def initialize(hour: '00', minute: '00')
    @hour = hour.to_i
    @minute = minute.to_i

    minutes = @minute / 60
    @minute = @minute % 60

    @hour += minutes
    days = @hour / 24
    hour = days * 24
    @hour -= hour
  end

  def convert_hour
    case hour
    when 24
      '00'
    when 0..9
      "0#{hour}"
    else
      hour
    end
  end

  def convert_minutes
    case minute
    when 60
      '00'
    when 0..9
      "0#{minute}"
    else
      minute
    end
  end

  def +(other)
    Clock.new(hour: hour + other.hour, minute: minute + other.minute)
  end

  def -(other)
    Clock.new(hour: hour - other.hour, minute: minute - other.minute)
  end

  def ==(other)
    to_s == other.to_s
  end

  def to_s
    "#{convert_hour}:#{convert_minutes}"
  end
end
