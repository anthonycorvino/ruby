# 01_swapper.rb
#
# Anthony Corvino
# 11 May 2019
#
# Given an array, swap the values in index_1 and index_2.

def swapper(arr, idx_1, idx_2)

    # Swap the values in the array based on the indexes given.
    arr[idx_1], arr[idx_2] = arr[idx_2], arr[idx_1]

    arr
end


# Testing
p swapper(["a", "b", "c", "d"], 0, 2)               # => ["c", "b", "a", "d"]
p swapper(["a", "b", "c", "d"], 3, 1)               # => ["a", "d", "c", "b"]
p swapper(["canal", "broadway", "madison"], 1, 0)   # => ["broadway", "canal", "madison"]
