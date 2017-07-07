age = gets.to_i

while age<100
  puts "You are alive. You are " + age.to_s + " years old"
  sleep 1
  age += 1
end
puts "Oooops, you are dead"
