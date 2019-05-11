# 07_multi_dimensional_sum.rb
#
# Anthony Corvino
# 10 May 2019
#
# Given an array of arbitrary complexity, return the 
# sum of all of its elements.

def multi_dimensional_sum(array)
    
    sum = 0

    # Make the array one dimensional, loop over the elements and add each of
    # them together into a counter.
    array.flatten.each do |num| 
        sum += num
    end    

    # Implicit return.
    sum
end


# Testing

arr_1 = [
    [4, 3, 1],
    [8, 1],
    [2]
]

p multi_dimensional_sum(arr_1)    # => 19

arr_2 = [
    [ [3, 6], [7] ],
    [ [5, 2], 1 ]
]

p multi_dimensional_sum(arr_2)    # => 24
