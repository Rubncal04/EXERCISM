# frozen_string_literal: true

class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(candidates = [])
    candidates.select do |candidate|
      normalized_candidate = candidate.downcase
      anagram?(normalized_candidate) && !same_word?(normalized_candidate)
    end
  end

  private

  def anagram?(candidate)
    @word.chars.sort == candidate.chars.sort
  end

  def same_word?(candidate)
    @word == candidate
  end
end
