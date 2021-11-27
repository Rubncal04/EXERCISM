# frozen_string_literal: true

# Processing log-lines.
class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(' ')[1..].join(' ')
  end

  def log_level
    @line.split(' ').first.scan(/[A-Z]+/).first.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
