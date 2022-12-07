# frozen_string_literal: true

# Class isogram with isogram? method that returns boolean if word is or isn't an isogram
class Isogram
  def self.isogram?(word)
    word = word.downcase.scan(/\w/)
    no_duplicates = word.uniq
    word.length == no_duplicates.length
  end
end
