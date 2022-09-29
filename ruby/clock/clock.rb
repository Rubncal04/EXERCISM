# Class clock
class Clock
  attr_accessor :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
    minutes = @minute / 60
    @minute %= 60
    @hour += minutes
    days = @hour / 24
    hour = days * 24
    @hour -= hour
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
    "#{'%02d' % hour}:#{'%02d' % minute}"
  end
end
