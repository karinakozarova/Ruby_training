def count_vowels(str)
  length = str.size
  str.downcase!
  i = 0
  count = 0
  while i <= length
    case str[i]
      when 'a','e','i','o','y','u' then count += 1
    end
    i += 1
  end
  count
end

def consonants(str)
  length = str.size
  str.downcase!
  i = 0
  consonants = 0
  while i <= length
    case str[i]
      when 'b', 'c','d','f','g','h','j','k','l',
          'm','n','p','q','r','s','t','v','w','x','z' then consonants += 1
    end
    i += 1
  end
  consonants
end

def palindrome?(obj)
  result = false
  result = true if obj.to_s == obj.to_s.reverse!
  result
end

def lucas_1-n(n)
  # a program to find the 1-n
  # lucas numbers
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

def doubless?(n)
  return true if n%2 == 0
  return false
end
def first_doubless(n)
  i = 0
  while i <= n
    puts i if doubless?(i)
    i += 1
  end
end

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

def anagram?(a,b)
  return false if a.to_s.size != b.to_s.size
  char = 'a'
  while char < 'z'
    return false if letter_times(a,char) != letter_times(b,char)
    char = increment_char(char)
  end
  true
end

def increment_char(char)
  char = char.ord + 1
  char = char.chr
  return char
end

def letter_times(a,char)
  # char - the letter you're looking for
  # a - string
      i = 0
      count = 0
      while i<a.size
          count += 1 if char == a[i]
          i += 1
      end
      count
end

puts anagram?("sadsss","sdasss")
puts factorial_num(1)
puts factorial_num(4)
puts sum_digits(43543)
puts count_digits(234254)
first_doubless(23)
doubless?(23)
puts palindrome?(12342)
puts count_vowels("abcd efgh")
puts consonants("abcd efgh")
