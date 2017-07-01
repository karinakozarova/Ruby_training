puts "Enter age: " 
age = gets.to_i 
puts age 

puts "Enter gender(female - 1, male - 0)"
gender = gets
i = 1
while  i  do 
  if gender.to_i == 1
    puts "You're a woman and your age is " + age.to_s
    break
  elsif gender.to_i == 0
    puts "You are a man and your age is " + age.to_s 
    break
  else
      puts "Wrong input, you must enter 0 or 1"
  end
end
