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
