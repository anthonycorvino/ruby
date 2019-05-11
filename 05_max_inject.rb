# 05_max_inject.rb
# 
# Anthony Corvino
# 10 May 2019
#
# Use the built in inject method to find the largest element of an
# array of arbitrary length.

def max_inject(*arr)

    arr.inject(0) {|res, element| res > element ? res : element }

end

# Testing
p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30


# Taken from stackoverflow to visualize how inject works.
[1, 2, 3, 4].inject(0) { |result, element| result + element }
[2, 3, 4].inject(0 + 1) { |result, element| result + element }
[3, 4].inject((0 + 1) + 2) { |result, element| result + element }
[4].inject(((0 + 1) + 2) + 3) { |result, element| result + element }
[].inject((((0 + 1) + 2) + 3) + 4) { |result, element| result + element }
(((0 + 1) + 2) + 3) + 4
10