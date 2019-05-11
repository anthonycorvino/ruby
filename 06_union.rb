# 06_union.rb
#
# Anthony Corvino
# 10 May 2019
#
# Takes an arbitrary number of arrays as arguments and returns them all in
# a one dimensional array.

def union(*arrys)

    united = []
    
    # For each argument passed, push it into a new flattened array
    # that is one dimensional. Making use of implied returns.
    arrys.each {|arg| united.push(arg) }.flatten

end


# Testing
p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
