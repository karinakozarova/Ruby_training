print "Enter num: "
num = gets.chomp.to_i

while num<=10000
	puts num
	num += 1
	sleep 0.001
end