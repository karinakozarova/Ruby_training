# find longest sequence of zeroes
def longest_sequence_of_num(num,num_to_find = '0')

    # Input:
    # the number in which we're searching and the digit who we're using
    # default digit to search is 0

    max = 0
    count = max

    while num > 0
      digit = num % 10
      if digit == num_to_find
          max += 1
      else
        count = max if max > count
        max = 0
      end
      num /= 10
    end
    count
end

puts "Enter number:"
num = gets.chomp.to_i

puts "What digit are we looking for?"
num_to_find = gets.chomp.to_i

puts longest_sequence_of_num(num,num_to_find)
