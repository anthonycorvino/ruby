# 03_bubble_sort.rb
#
# Anthony Corvino
# 11 May 2019
#
# Reimplementation of bubble sort without using array.sort built in method.

def bubble_sort(array)

  # If the size is less than or equal to 1, the array has already been sorted.
  return array if array.size <= 1 
  
  swapped = true
  
  # Until there are no swaps left, check the current element against the next
  # one to the right, swap values if needed.
  while swapped do
    swapped = false
    0.upto(array.size-2) do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i] # swap values
        swapped = true
      end
    end    
  end

  array
end



# Testing

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]



# Taken from wikipedia for visualization purposes

# procedure bubbleSort( A : array of sortable items )
#     n = length(A)
#     repeat
#         newn = 0
#         for i = 1 to n-1 inclusive do
#             if A[i-1] > A[i] then
#                 swap(A[i-1], A[i])
#                 newn = i
#             end if
#         end for
#         n = newn
#     until n <= 1
# end procedure