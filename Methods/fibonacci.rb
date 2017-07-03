require 'thread'

def fibonacci(first_num, second_num)
	num = first_num + second_num
	puts num
	sleep(1)
	fibonacci(second_num,num)
end


fibonacci(1,1)