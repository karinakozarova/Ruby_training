filename = gets.chomp
file = open(filename)

puts file.read
file.close