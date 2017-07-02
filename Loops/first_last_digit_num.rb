print "Enter number: "
num = gets.chomp.to_i
puts "Your number is #{num}"

last_digit = num % 10

first_digit = 0
while num>0 do	
	first_digit = num
	num /= 10
end

puts "The first digit is #{first_digit} and the last is #{last_digit}."
