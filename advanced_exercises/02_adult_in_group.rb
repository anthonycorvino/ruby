# 02_adult_in_group.rb
#
# Anthony Corvino
# 10 May 2019
#
# Checks to see if any person in the array of hashes provided has an age
# over 18. Written for advanced_exercises.

def adult_in_group?(people)
    adulting = true
    
    # Get the hash values from the people array, map the hash values into
    # a single dimensional array for easy manipulation.
    persons = people.each { |k, v| v }
    adults = persons.map {|x| x.values}.flatten

    # Removes any values from the array that are non-numerical.
    ages = adults.reject{|e| e =~ /[A-Z]/ }

    # Finally, store any numbers that are >= 18 into a result array.
    result = ages.select {|age| age >= 18 }

    # If there is nothing left in the array, there are no people that are
    # atleast 18 in the group.
    adulting = false if result.empty? 


    return adulting
end


# Testing

people_1 = [
    {name: "Jack", age: 17},
    {name: "Jill", age: 21},
    {name: "Alice", age: 15},
    {name: "Bob", age: 16}
]
p adult_in_group?(people_1)    # => true

people_2 = [
    {name: "Jane", age: 12},
    {name: "John", age: 13},
    {name: "Ashley", age: 10},
    {name: "Bill", age: 16}
]
p adult_in_group?(people_2)    # => false
