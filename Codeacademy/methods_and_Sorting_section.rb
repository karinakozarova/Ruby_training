def puts_1_to_10
  (1..10).each { |i| puts i }
end

puts_1_to_10 # Ignore this for now. We'll explain it soon!

# Define your method below!
def greeting

  puts "Hello"

end
# Define your method above this line.
greeting # Ignore this for now. We'll explain
# it in the next exercise!

def array_of_10
  puts (1..10).to_a
end
array_of_10

def cubertino(n)
  puts n ** 3
end
cubertino(8)

def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
what_up("What up", "Justin", "Ben", "Kevin Sorbo")

def add(num1,num2)
  num1+num2
end

def by_three?(n)
  return n % 3 == 0
end

def greeter(name)
  return "Good" + name.to_s
end

1.times do
  puts "I'm a code block!"
end
1.times { puts "As am I!" }

# method that capitalizes a word
def capitalize(string)
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

# The block, {|i| puts i}, is passed the current
# array item each time it is evaluated. This block
# prints the item.
[1, 2, 3, 4, 5].each { |i| puts i*5 }

# This block prints the number 5 for each item.
# (It chooses to ignore the passed item, which is allowed.)
[1, 2, 3, 4, 5].each { |i| puts 5 }

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]
# Call the sort! method on my_array below.
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].
my_array.sort!

# library sorting code
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# How might we sort! the books in alphabetical order? (Hint, hint)
books.sort!

book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"
book_1 <=> book_2


books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }
# Sort your books in descending order, in-place below
books.sort! { |secondBook, firstBook| firstBook <=> secondBook }


def welcome1
  puts "Welcome to Ruby"
end
welcome1

def welcome(name)
  "Hello, #{name}"
end
welcome('k')

fruits = ["orange", "apple", "banana", "pear", "grapes"]
fruits.sort! {|x,y| y<=>x}

my_array = [1, 2, 3, 4, 5]

my_array.each do  |x|
  x = x*x
  puts x
end



