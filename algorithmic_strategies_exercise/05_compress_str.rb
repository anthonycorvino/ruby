# 05_compress_str.rb
#
# Anthony Corvino
# 11 May 2019
# 
# Given a string of arbitrary length, return a new string with a number 
# prepended to each char that shows how many times the number is repeated.

def compress_str(str)
  
  # Checks each char for the number of duplicates, keeps only chars that
  # are repeated more than once.
  dups = str.chars.group_by{|e| e}.keep_if{|_, e| e.length > 0}


  # Map the chars from a hash into a new string, key value is the number
  # of times that the char is repeated, value is the char itself. Join the
  # chars back into a string at the end and return it.
  new_str = dups.map{|k, v| v.length.to_s + k}.join("")

end



# Testing
p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"