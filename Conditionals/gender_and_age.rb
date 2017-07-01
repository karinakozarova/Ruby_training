puts "Enter age: " 
age = gets.to_i 
puts age 

puts "Enter gender(female - 1, male - 0)"
gender = gets
 
if gender.to_i == 1
  puts "You're a woman and your age is " + age.to_s
elsif gender.to_i == 0
  puts "You are a man and your age is " + age.to_s 
else
    puts "Wrong input, you must enter 0 or 1"
end
