filename = "QndA_info.txt"
$name_const = 1.9
$age_const = 0.3
$bonus_const = 1
puts "Hello!"
puts "You're playing a game of Q&A"
puts "Depending on your answer I'll give you a score. Let's start"

print "How may I call you? "
name = gets.chomp

sum = name.size*$name_const

print "Okay, #{name}. :D Nice to meet you. Time for Q2.\n"
print "\nHow old are you? "
age = gets.chomp.to_i
sum -= age*$age_const

bonus = 0

if sum<=0
  print "You have a very bad score, #{name}."
  print "Write something interesting for a bonus."
  bonus = gets.chomp
else
  puts "\nThe end is near!\n"
end

sum += bonus.size*$bonus_const

print "Final question time."
puts "Do you like pizza???"
answer = gets.chomp.size

sum += answer

puts "Your score is #{sum.round}. Thank you for playing."
