puts "---------------------"
puts "\tGame of nums"
puts "---------------------"

puts 'This game will have you enter a number between 1 and 20.'
print "Let's start."
print "Enter prediction: "
user_try = gets.chomp.to_i

num_to_guess = (1..20).to_a.shuffle![3]
if user_try == num_to_guess
  puts "You did it from the first time."
else
  until user_try == num_to_guess do
    print "Wrong one. Try again: "
    user_try = gets.chomp.to_i
  end
end

puts "Congratulations!! You did it."
