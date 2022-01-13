# frozen_string_literal: true

# Manage a game player's High Score list.
class HighScores
  attr_reader :scores

  def initialize(score)
    @scores = score
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.max(3)
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end
