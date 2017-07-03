puts "Normal array:"
numbers = [0,1,2,3,4,5]
puts numbers

puts "Reversed array:"
arr = numbers.reverse
puts arr

print "Length: "
length = numbers.length
puts length


print "size: "
size = numbers.size
puts size

puts "Ordered:"
order = arr.sort
puts order

puts "Does the array include 0"
answer = numbers.include?0
puts answer

first_element = numbers[0]
puts first_element

last_element = numbers[size-1]
puts last_element

numbers<<9
puts numbers

numbers.pop
puts numbers
