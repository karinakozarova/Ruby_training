def digit_counting(last_digit, nums)
  case last_digit
    when 0 then
      nums[0] += 1
    when 1 then
      nums[1] += 1
    when 2 then
      nums[2] += 1
    when 3 then
      nums[3] += 1
    when 4 then
      nums[4] += 1
    when 5 then
      nums[5] += 1
    when 6 then
      nums[6] += 1
    when 7 then
      nums[7] += 1
    when 8 then
      nums[8] += 1
    when 9 then
      nums[9] += 1
  end
end

# how many times is a digit in a number
def number_of_nums (num)
  # create an array with 10 values(0-9)
  nums = (0...10).to_a
  nums.each {|x| nums[x] = 0}
  while num>0
    last_digit = num%10
    digit_counting(last_digit, nums)
    num /= 10
  end
  nums
end

print "Num1: "
# num1 = gets.chomp.to_i
num1 = -525
if num1<0
  num1 *= -1 #make it positive
end
puts number_of_nums(num1)
