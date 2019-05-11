# 01_coprime.rb
#
# Anthony Corvino
# 10 May 2019 
#
# Checks to see if two integers have any factors in common.
# Written for advanced_exercises.


def coprime?(num_1, num_2)
    # Turn the parameters into a range for easier iteration.
    fRange = (1..num_1) 
    sRange = (1..num_2)

    divisible = true

    # Map over the contents of each range, check if the number is divisible by
    # the entry, store results in array.
    divisors_first = fRange.map {|number| num_1 % number == 0 ? number : 0  }
    divisors_second = sRange.map {|number| num_2 % number == 0 ? number : 0 }

    # Remove the 0's that were used as placeholders for values that are not
    # divisible by the arguments to the function.
    divisors_first.delete_if {|x| x == 0}
    divisors_second.delete_if {|x| x == 0}

    # Add all common divisors to one array.
    all_divisors = divisors_first + divisors_second

    # Checks to see if there are any numbers besides one left in the
    # array, which will confirm whether or not there are any common divisors.
    result = all_divisors.select{ |e| all_divisors.count(e) > 1 }.uniq
    divisible = false if result.any?{|x| x > 1 }

    # Will return true only if the 2 parameters have a divisor in common.
    return divisible
end



p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
