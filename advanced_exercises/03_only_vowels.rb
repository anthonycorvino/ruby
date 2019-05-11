# 03_only_vowels.rb
# 
# Anthony Corvino
# 10 May 2019
# 
# Returns true if the given phrase is made up entirely of vowels.

def only_vowels?(str) 
    str.scan(/[aeiou]/).count == str.length ? true : false
end

p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


