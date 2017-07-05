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
num1 = -555
if num1<0
  num1 *= -1 #make it positive
end

num1_a = (0...10).to_a
num1_a.each {|x| num1_a[x] = 0}
num1_a =  number_of_nums(num1)

puts num1_a

print "Num2: "
# num2 = gets.chomp.to_i
num2 = 55521
if num2<0
  num2 *= -1 #make it positive
end

num2_a = (0...10).to_a
num2_a.each {|x| num2_a[x] = 0}
num2_a =  number_of_nums(num2)

puts num2_a

# compare num1_a and nun2_a
