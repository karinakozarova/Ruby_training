# count spaces
def word_count(string)
  i = 0
  count = 0
  while i < string.length
    current_char = string[i]
    previous_char = string[i-1]
    i += 1
    count += 1 if current_char == " " && previous_char != " "
  end

  count -= 1 if string[0] == " "
  count
end

def char_count(string)
    count = string.length
    i = 0
    while i < string.length
      current_char = string[i]
      count -= 1 if current_char == " "
      i += 1
    end
    count
end

print "Enter text: "
string = gets
puts word_count(string)
puts char_count(string)
