print "How many fibonacci numbers do you want? "
how_many = gets.chomp.to_i

num = 0; first_num = 1; second_num = 1
how_many -= 1
puts 0

how_many.times{
	num = first_num + second_num
	puts num

	first_num = second_num
	second_num = num

}

