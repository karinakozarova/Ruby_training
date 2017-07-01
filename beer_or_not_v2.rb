puts "Enter age:"
age = gets.to_i
legal_age = 18
puts "Dont Drink" unless age>legal_age #isn't legal age
puts "Drink" if age>legal_age #is of legal age