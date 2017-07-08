## find biggest num in two arrays
a1_max = -99999999
a2_max = -99999999

array1 = Array.new
puts "enter array 1:".capitalize
y = ''
while y !=#nill
    y = gets.chomp.to_i
  array1.push y
end

array2 = Array.new
puts "enter array 2:".capitalize
while y !=#nill
    y = gets.chomp.to_i
  array2.push y
end

array1.each {|x| a1_max = x if x>a1_max}
array2.each {|x| a2_max = x if x>a2_max}

max = a1_max > a2_max ? a1_max : a2_max
puts a1_max
puts a2_max
puts max

