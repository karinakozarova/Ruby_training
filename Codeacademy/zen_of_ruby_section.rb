ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

# Type your Ruby code below!
puts "Truth" if 1

# Type your Ruby code below!
i_am_beautiful = true
puts "I'm beautiful" unless i_am_beautiful == false

# Type your Ruby code below!
truth = false
puts true == truth ? "true" : "false"

puts "Hello there!"
greeting = gets.chomp

case greeting
  when "English" then puts "Hello"
  when "French" then puts  "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
    else puts "I don't know that language"
end

# Write your code on line 2!
puts favorite_language ||= "C"

def multiple_of_three(n)
   n % 3 == 0 ? "True" : "False"
end

def multiple_of_three(n)
   return n % 3 == 0 ? "True" : "False"
end

def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each do |x| puts x unless x % 2 == 1 end

# Write your code below!
'L'.upto('P'){|letter| puts letter}

age = 26
age.respond_to?:next

alphabet = ["a", "b", "c"]
alphabet<<'d' # Update me!

caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!

favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end


puts "One is less than two!" if 1 < 2

puts 1 < 2 ?  "One is less than two!" : "One is not less than two."

puts "What's your favorite language?"
language = gets.chomp

case language
when "Ruby"
then  puts "Ruby is great for web apps!"
when "Python"
 then puts "Python is great for science."
when "JavaScript"
  then puts "JavaScript makes websites awesome."
when"HTML"
  then puts "HTML is what websites are made of!"
when"CSS"
  then puts "CSS makes websites pretty."
else
  puts "I don't know that language!"
end

favorite_animal ||= "cat"

def square(num)
    num*num
end

3.times do
  puts "I'm a refactoring master!"
end
