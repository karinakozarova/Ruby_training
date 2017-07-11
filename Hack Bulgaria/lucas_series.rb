# a program to find the 1-n 
# lucas numbers

def lucas_1-n(n)
	first = 2
	second = 1
	i = 0
	while i < n
	  if n == 0
		answer = first
		break
	  elsif n == 1
		answer = second
		break
	  else
		help = second
		second = first + second
		first = help
		answer = second
	  end
	  puts answer
	  sleep 1
	  i += 1
	end
end

def lucas_rec(n)
  if n == 0
    result = 2
  elsif n ==1
    result = 1
  else
    result = lucas(n-1) + lucas(n-2)
  end
  result
end
