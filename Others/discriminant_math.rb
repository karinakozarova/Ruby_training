# D = b^2 - 4ac
# ax^2 +bx + c 

a = gets.to_i
b = gets.to_i
c = gets.to_i

discriminant = b*b - 4*a*c
if discriminant<0
	puts "X is imaginary"
elsif discriminant>= 0 
	if discriminant > 0
		result1 = (b*(-1) + Math.sqrt(discriminant))/(2*a)  
		result2 = (b*(-1) - Math.sqrt(discriminant))/(2*a)
		puts "the result is #{result1} and #{result2}"  
	else result = (b*(-1) + Math.sqrt(discriminant))/(2*a)  
		puts "the result is" + result.to_s
	end
end
