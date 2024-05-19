# TextAnalyzer

Welcome to TextAnalyzer! This gem provides a set of utilities for analyzing text content. You can easily compute word frequency, letter frequency, find the most common words, and split text into sentences.

## Installation

Add this line to your application's Gemfile:

```ruby

gem 'text_analyzer'

````
And then execute:

```bash

$ bundle install

```
Or install it yourself as:

```bash

$ gem install text_analyzer

```

Usage
Here is a quick example of how to use TextAnalyzer:


require 'text_analyzer'

text = "Hello world! Welcome to Ruby. Ruby is great. Isn't Ruby just amazing? Hello again!"

# Word Frequency
```bash

puts TextAnalyzer.word_frequency(text)
# => {"hello"=>2, "world"=>1, "welcome"=>1, "to"=>1, "ruby"=>3, "is"=>1, "great"=>1, "isn't"=>1, "just"=>1, "amazing"=>1, "again"=>1}
```


# Letter Frequency
```bash

puts TextAnalyzer.letter_frequency(text)
# => {"h"=>2, "e"=>6, "l"=>6, "o"=>4, "w"=>2, "r"=>4, "d"=>2, "c"=>1, "m"=>3, "t"=>2, "u"=>3, "b"=>2, "y"=>3, "i"=>4, "s"=>3, "g"=>2, "n"=>3, "a"=>5}

```


# Sentences

```bash

puts TextAnalyzer.sentences(text)
# => ["Hello world!", "Welcome to Ruby.", "Ruby is great.", "Isn't Ruby just amazing?", "Hello again!"]

```


# Most Common Words
```bash

puts TextAnalyzer.most_common_words(text, 3)
# => [["ruby", 3], ["hello", 2], ["world", 1]]
```

Development
After checking out the repo, run bin/setup to install dependencies. Then, run rake test to run the tests. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install.
