# 04_peak_finder.rb
#
# Anthony Corvino
# 11 May 2019
#
# An element is considered a "peak" if it is greater than both it's left and 
# right neighbor. The first or last element of the array is considered a 
# "peak" if it is greater than it's one neighbor. Returns an array of
# all peaks inside of any given array.

def peak_finder(arr)
  peaks = []
  i = 1         # i is 1 because first and last element are checked before
                # looping through the array.


  # Check first for outer peaks in first and last element of the array.
  if arr[0] > arr[1]
    peaks << arr[0]
  end

  # arr[-1 - 1] is a nice way of accessing the 2nd to last element in any
  # array. This block is checking the last element vs the 2nd to last element
  # to see which is greater.
  if arr[-1] > arr[-1 - 1]
    peaks << arr[-1]
  end

  # After checking the first and last elements, check inner numbers for the 
  # highest number in the array. Add it to the peak array.
  while i < arr.length - 1
    if arr[i] > arr[i + 1]
      peaks << arr[i]
    end
    i += 1
  end

  # Return the new array.
  peaks

end


# Testing

p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
