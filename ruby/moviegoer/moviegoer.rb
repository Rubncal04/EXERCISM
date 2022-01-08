# frozen_string_literal: true

# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

# this class will build out rules for a movie theater's website.
class Moviegoer
  attr_reader :age, :member

  SENIOR_AGE = 60
  YOUNG_AGE = 18
  TICKET_PRICE_FOR_SENIORS = 10
  TICKET_PRICE_FOR_YOUNG = 15

  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    age >= SENIOR_AGE ? TICKET_PRICE_FOR_SENIORS : TICKET_PRICE_FOR_YOUNG
  end

  def watch_scary_movie?
    age >= YOUNG_AGE
  end

  def claim_free_popcorn!
    member ? '🍿' : (raise NotMovieClubMemberError)
  end
end
