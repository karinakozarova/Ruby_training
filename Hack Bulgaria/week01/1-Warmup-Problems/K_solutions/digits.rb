def count_digits(n)
  count = 0
  while n >0
    count+=1
    n /= 10
  end
  count
end

def sum_digits(n)
  sum = 0
  while n >0
    digit = n% 10
    sum += digit
    n /= 10
  end
  sum
end

def factorial_num(n)
  # 4! = 1*2*3*4
  result = 1
  if n != 0
    while n>0
      result *= n
      n -= 1
    end
  end
  result
end

puts factorial_num(1)
puts factorial_num(4)
puts sum_digits(43543)
puts count_digits(234254)