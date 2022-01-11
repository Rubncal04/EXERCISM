# frozen_string_literal: true

# This class converts a phrase to its acronym
class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b(\w)/).join('').upcase
  end
end
