# sum n to 1
num = gets.to_i
sum = 0
begin 
	sum += num
	num-=1
end until num<0

puts sum