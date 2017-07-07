puts "Enter age:"
age = gets.to_i
$legal_age = 18

puts "You can't drink" if age<$legal_age
puts "Drink!\n" unless age<$legal_age


