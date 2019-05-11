# 02_is_sorted.rb
#
# Anthony Corvino
# 11 May 2019
#
# Returns a boolean that determines if an array is sorted. 

def is_sorted(arr)

    # Self explanatory
    sorted = false

    return true if arr.sort == arr

    sorted

end

p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false
