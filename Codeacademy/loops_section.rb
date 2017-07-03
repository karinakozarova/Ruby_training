i = 0
while i < 5
  puts i
  # Add your code here!
  i+=1
end

counter = 1
while counter < 11
  puts counter
  counter +=  1
end

for num in 1..15
  puts num
end


counter = 1
until counter > 10
  puts counter
  # Add code to update 'counter' here!
  counter += 1
end

for i in 1..20
    puts i
end

i = 20
loop do
  i -= 1
  print "#{i}\n"
 break if i <= 0
end

i = 20
loop do
  i -= 1
  next if i % 2 == 1
  print "#{i}\n"
 break if i <= 0
end

i = 20
loop do
  i -= 1
  next if i % 1 == 0
  print "#{i}\n"
 break if i <= 0
end
