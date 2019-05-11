# 04_filter_lengths.rb
#
# Anthony Corvino
# 10 May 2019
# 
# Filter an array of strengths by a given length with default argument=5 

def filter_lengths(strings, length=5)

    strings.select { |word| word.length >= length}
end

# Testing

p filter_lengths(["pear", "dragonfruit", "fig", "clementine"], 4)   # => ["pear", "dragonfruit", "clementine"]
p filter_lengths(["pear", "dragonfruit", "fig", "clementine"])      # => ["dragonfruit", "clementine"]
p filter_lengths(["cat", "dog", "capybara", "mouse"], 7)            # => ["capybara"]
p filter_lengths(["cat", "dog", "capybara", "mouse"])               # => ["capybara", "mouse"]
