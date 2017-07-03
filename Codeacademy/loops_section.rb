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

my_array = (1..5).to_a

array = [1,2,3,4,5]
array.each do |x|
  x += 10
  print "#{x}"
end

odds = [1,3,5,7,9]
odds.each do |i|
  i *= 2
  print i
end

10.times { print "Chunky bacon!" }

i = 1
while i<=50
  print i
  i+=1
end

i = 0
until i>=50
  i+=1
  print i
end

for i in 1..50
  print i
end

count = 0
loop do
  print "Ruby!"
  count += 1
  break if count == 30
end

30.times do print "Ruby!" end
