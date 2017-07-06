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
