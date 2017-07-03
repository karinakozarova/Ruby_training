if true
    puts true
end

if true
    puts true
else 
    puts false
end

if true
    puts true
elsif nil
    puts nil
else 
    puts false
end

hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

is_true = 2 != 3
is_false = 2 == 3

test_1 = 17 >=16
test_2 = 21 < 30
test_3 = 9 <=9
test_4 = -11 <= 4

# test_1 = 77 != 77
test_1 = false

# test_2 = -4 <= -4
test_2 = true

# test_3 = -44 < -33
test_3 = true

# test_4 = 100 == 1000
test_4 = false

a = 10
b = 11
if a < b
  print "a is less than b!"
elsif b < a
  print "b is less than a!"
else
  print "b is equal to a!"
end
