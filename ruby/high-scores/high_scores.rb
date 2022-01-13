class HighScores
  attr_reader :list_of_scores

  def initialize(score)
    @list_of_scores = score
  end

  def scores
    list_of_scores
  end

  def latest
    list_of_scores.last
  end

  def personal_best
    list_of_scores.max()
  end

  def personal_top_three
    list_of_scores.max(3)
  end

  def latest_is_personal_best?
    value_boolean = true
    list_of_scores[..-2].map do |score|
      if latest > score
        value_boolean
      else
        value_boolean = false
      end
    end
    value_boolean
  end
end
