# A UUID is a type of idendifier used as a way to uniquely identify
# items which may not all be created by the same systme. That is,
# without any form of synchronization, two or more separate 
# computer systems can create new items and label them with a UUID
# with no significant chance of stepping on eash other's toes.

# It accomplishes this freat through massive randomization. 

# The number of possible UUID values is approx. 3.4 x 10E38

# Each UUID consists of 32 hexadecimal characters, and is typically 
# broken into 5 secions like this: 8-4-4-4-12 and represented as
# a string. 

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Wtrite a method that returns one UUID when called with no parameters

# input: none
# output: 32 random hexadecimal characters in a string format like:
# "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# hexadecimal numeral system is made up of 16 symbols, ten digits and
# a, b, c, d, e, f. (base 16)

HEX = %w[0 1 2 3 4 5 6 7 8 9 a b c d e f]

def uuid
  uuid = ''
  sections = [8, 4, 4, 4, 12]
  sections.each do |num|
    num.times do |x|
      uuid << HEX.sample
      uuid << '-' if x == num-1
    end
  end
  uuid
end

p uuid
