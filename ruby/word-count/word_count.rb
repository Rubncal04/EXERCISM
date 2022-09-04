=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
    @phrase.gsub!(/[^a-z\d']/, ' ')
    @phrase.gsub!(/'([\S]+)'/, '\1')
  end


  def word_count
    words = {}
    word = @phrase.split
    word.each { |i| words[i] = word.count { |c| i.eql?(c) } }
    words
  end

end
