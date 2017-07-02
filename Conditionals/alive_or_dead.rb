age = gets.to_i 

while age<100 do
  puts "You are alive. You are " + age.to_s + " years old"
  age += 1
end
if age>= 100
  puts "Oooops, you are dead"
end
