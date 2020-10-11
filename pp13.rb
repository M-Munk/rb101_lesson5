# given the following data structure, return a new array containing
# the same sub-arrays as the original but ordered logically by only
# taking into consideration the odd number they contain

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# expected outcome:

expected = [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

result = arr.sort_by do |subarr|
  subarr.select do |num|
    num.odd?
  end
end

p result == expected
