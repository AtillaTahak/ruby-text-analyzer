require_relative "text_analyzer/version.rb"

module TextAnalyzer
  class Error < StandardError; end

  def self.word_frequency(text)
    freq = Hash.new(0)
    words = text.scan(/\b[\w']+\b/)
    words.each { |word| freq[word.downcase] += 1 }
    freq
  end

  def self.letter_frequency(text)
    freq = Hash.new(0)
    letters = text.gsub(/[^a-zA-Z]/, '')
    letters.each_char { |char| freq[char.downcase] += 1 }
    freq
  end

  def self.sentences(text)
    text.split(/(?<=[.!?])\s+/)
  end

  def self.most_common_words(text, top_n = 5)
    word_freq = word_frequency(text)
    word_freq.sort_by { |word, count| -count }[0...top_n]
  end
end
