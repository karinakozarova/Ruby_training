numbers = {1 => 2, 3 => 4}

puts numbers.size             # => 2
puts numbers.invert           # => {2=>1, 4=>3}
puts numbers.merge({5 => 6})  # => {1=>2, 3=>4, 5=>6}
