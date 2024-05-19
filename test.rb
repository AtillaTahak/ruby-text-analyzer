require_relative 'lib/text_analyzer'

text = "Hello world! Welcome to Ruby. Ruby is great. Isn't Ruby just amazing? Hello again!"

puts "Word Frequency:"
puts TextAnalyzer.word_frequency(text)

puts "\nLetter Frequency:"
puts TextAnalyzer.letter_frequency(text)

puts "\nSentences:"
puts TextAnalyzer.sentences(text)

puts "\nMost Common Words:"
puts TextAnalyzer.most_common_words(text, 3)
