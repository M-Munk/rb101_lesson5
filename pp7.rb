a = 2 #=> 2
b = [5, 8] # => [5, 8]
arr = [a, b] # => [2, [5, 8]]

arr[0] += 2  # => [4, [5, 8]]
arr[1][0] -= a # => [4, [3, 8]]

# what would be the final values of a and b
# the value of a didn't change because we are not referencing a at any point. 
# arr[0] modifies the arra arr and not a. In effect we are assigning
# a new object at that index of the array so that instead of arr[0]
# containing a, it now contains 4
# we can check this by looking at the value of arr
# the value of b did change because b is an array and we are 
# modifying that array by assigning a new value at index 0 
# of that array.
