# Comments
```` ruby
# one line comment
=begin

multi
line
comment

=end

````

# Kent Beck's rules of Simple Design:
<ul>
<li>The code must first be correct (as defined by tests); </li> <br>
<li>then it should be a clear statement of the design (what J.B.Rainsberger calls "no bad names"); </li> <br>
<li>then it should contain no duplication (of text, of ideas, or of responsibility);</li> <br>
<li>and finally it must be the smallest code that meets all of the above.</li> <br>
<br>
It's time to stop refactoring when the code makes a reasonable stab at meeting those goals, and when any further changes would add no further benefit.
</li>
</ul>

# interpretator
	irb --simple-prompt

# Constants and vars
Vars must start with lowercase, consts must be named with an uppercase and can't change their value.

Global vars should start with $. __Globals are bad.__ <br>
Instance variables are preceded by a @.<br>
Class variables are preceded by @@.<br>

````ruby
variable = 1   # local
Variable = 1   # const
$variable = 1  # global
````

# Operators and operations
## = vs ==
== is greater than =	<br>
== -> checks if true
= -> assigns value

## dots
... operator includes a range's first num and excludes the last
.. operator includes both the first and the last num in the range
<blockquote>
PEMDAS =  Parentheses Exponents Multiplication Division Addition Subtraction
</blockquote>

## conditional assignment operator
But what if we only want to assign a variable if it hasn't already been assigned? For this, we can use the conditional assignment operator: ||=.

## ternary
An even more concise version of if/else is the ternary conditional expression. It's called "ternary" because it takes three arguments: a boolean, an expression to evaluate if the boolean is true, and an expression to evaluate if the boolean is false.

The syntax looks like this:

boolean ? Do this if true: Do this if false
## combined comparison operator
The combined comparison operator looks like this: <=>. It returns 0 if the first operand (item to be compared) equals the second, 1 if first operand is greater than the second, and -1 if the first operand is less than the second

##  note 
Make sure to include the ! whe using some methods so that the user's string is modified in-place; otherwise, Ruby will create a copy of user_input.downcase and modify that instead.


# Numbers
Int <br>
Float <br>
Bignum (core) <br>
BigDecimal (stdlib) <br>
Rational <br>
Complex <br>

# Printing

## puts
```` ruby
puts "String" + variable
puts string[0..4]     #prints first 5 chars
puts string.split      #every word on new line
puts string.capitalize
puts string.reverse
puts string.upcase
puts string.downcase
puts string.length
puts "This is a variable: #{variable}"
puts "\t \\t tabs."
puts "\\n goes on new line"
puts "%s stringer" % "string" #string stringer
puts "stringg".chop # removes one g

````

````ruby
date = "6.10.2000"
puts date.split(".") # puts num on new line
````

## print
```` ruby
print "Info" # same as puts, no new line entered
````
# gets

```` ruby
variable = gets
name = gets.to_i     # makes it int
name = gets.chomp    # removes \n

````

# if-else, unless
```` ruby
if something
	do something
elsif something
	do something
else
	do something
end

````

```` ruby

unless num > 5   # if num<5
		do something
else
		do something
end
````

````ruby
puts "num is not 5" unless num == 5
puts "num is 5" if num == 5
````

# Loops

## While
Do is optional, always include it if the loop is in one line loop. <br>
### Normal while:
```` ruby
while count_while <= 100 do
	puts count_while
	count_while += 1
end
````
### Post while:
```` ruby
begin
	num += 1
	puts num
end while num < 100
````
## Until
```` ruby
until num > 100 do # again, do is optional
	puts num
	num += 1
end
````

# begin.. until
```` ruby
begin
	sum += num
	num -= 1
end until num < 0
````

## for loop

```` ruby
for i in 0..num
	puts i
end
````

<b>
The i in the for loop isn't in a local scope!!!
</b>
## each iterator
The each iterator creates a local scope!!!

````ruby
(0...n+1).each do |i|
	puts i
end
````

# Case

````ruby
case language
when "JS"
  puts "Websites!"
when "Python"
  puts "Science!"
when "Ruby"
  puts "Web apps!"
else
  puts "I don't know!"
end

# But you can fold it up like so:

case language
  when "JS" then puts "Websites!"
  when "Python" then puts "Science!"
  when "Ruby" then puts "Web apps!"
  else puts "I don't know!"
end
````
````ruby
case degrees_unit
when  'C' then result = degrees
when  'K' then result = degrees - 273.15
when  'F' then result = (degrees-32)*(5/9)
end
````

# Arrays

Saves references, not the elements. <br>
__The size of the array is dynamic.__ <br>

```` ruby
array_families = ["KK","AA","SD"]
puts array_families
array_families.sort # returns a new array!!
array_families.reverse # return a new array!!
array_families.size
array_families.length
array_families.include? # returns true or false, linear search
````
## Array mutating
````ruby
numbers = [1, 2, 3]

numbers << 4
p numbers   # => [1, 2, 3, 4]

numbers.insert 0, :zero
p numbers   # => [:zero, 1, 2, 3, 4]

result = numbers.delete_at(0)
p result    # => :zero
p numbers   # => [1, 2, 3, 4]
````
## Array stack
````ruby
stack = [1, 2, 3]

stack.push 4
p stack         # => [1, 2, 3, 4]

top = stack.pop
p stack         # => [1, 2, 3]
p top           # => 4
````

## More array methods
````ruby
[1, 2, 3].join("-")        # => "1-2-3"
[1, 2, 3].permutation
[1, 2].product([3, 4])     # => [[1, 3], [1, 4], [2, 3], [2, 4]]
[[1, 2], [3, 4]].transpose # => [[1, 3], [2, 4]]
[1, 2, 3, 4].shuffle       # разбърква масива произволно
````
## String arrays

````ruby
%w(chunky bacon)     == ['chunky', 'bacon']
%w[a b c]            == ['a', 'b', 'c']
%w{cool stuff}       == ['cool', 'stuff']
%w<coffee tea water> == ['coffee', 'tea', 'water']
%w|foo bar|          == ['foo', 'bar']
````

## iterations
````ruby
primes = [2, 3, 5, 7, 11]

primes.each { |n| puts n }

primes.each do |n|
  puts n
end
````

# sleep
```` ruby
sleep time
````
Stops the execution of the program for a certain number of seconds - time is a number in seconds.

# argv

```` ruby
a_name = ARGV[0]
testy = ARGV[1]
````
ARGV is everything that is writen after running a script. <br>
	ruby main.rb argv1 argv2 ardvn
where argv can be any data type

# Files
````ruby
file = open(filename) # default opens in read mode
file = open(filename, "w") # opens in write mode
puts file.read # prints content
file.close() # closes
file.truncate(0) # removes file text
puts file.readline # reads first line
````

# ASCII

```` ruby
letter = 'a'.ord   # gives numeric ASCII value of a
number.chr         # gives the character from an ASCII number
````

# Hashes

## indexing
````ruby
numbers = {:one => :edno, :two => :dve}

numbers[:one]     # => :edno
numbers[:three]   # => nil

numbers[:three] = :tri

numbers[:three]                     # => :tri
numbers.fetch(:four, :keine_ahnung) # => :keine_ahnung
````

## Methods
````ruby
numbers = {1 => 2, 3 => 4}

puts numbers.size             # => 2
puts numbers.invert           # => {2=>1, 4=>3}
puts numbers.merge({5 => 6})  # => {1=>2, 3=>4, 5=>6}
````

## after 1.9

The second line is preffered after ruby v.1.9
````ruby
{:one => 1, :two => 2}
{one: 1, two: 2}
````
The hash syntax you've seen so far (with the => symbol between keys and values) is sometimes nicknamed __the hash rocket style.__ <br>
However, the hash syntax has changed in Ruby 1.9. The new syntax is easier to type than the old hash rocket syntax:

````ruby
new_hash = { one: 1,
  two: 2,
  three: 3,
}
````
#### The two changes are:
<ul>
<li>You put the colon at the end of the symbol, not at the beginning; </li>
<li>You don't need the hash rocket anymore. </li> </ul> <br>
It's important to note that even though these keys have colons at the end instead of the beginning, they're still symbols!

````ruby
puts new_hash
# ==> {:one=>1, :two=>2, :three=>3}
## default hash value
my_hash = Hash.new("Trady Blix")
````
## .object_id
The .object_id method gets the ID of an object—it's how Ruby knows whether two objects are the exact same object.
## .each_key, .each_value

Ruby includes two hash methods, .each_key and .each_value, that do exactly what you'd expect:
````ruby
my_hash = { one: 1, two: 2, three: 3 }

my_hash.each_key { |k| print k, " " }
# ==> one two three

my_hash.each_value { |v| print v, " " }
# ==> 1 2 3
````

# methods
Ruby's methods will return the result of the last evaluated expression.


## Defining methods
````ruby
def method_name(parametres)
	do something
end

method_name(var)
````

## Methods with variability in parametres count
````ruby
	def name(*names)
		# we can get 1,2,3 or more names
	end
````
__N.B! There can be only one parametre with variable count!!!__

## default method parametres value
````ruby
def name(name = 'default value')
	do sth
end
````
## Methods with skiping parametres
````ruby
def name(name = {})
	do sth
end
````

## Predicati (methods)
A name of the method can end in ? if it return true or false. (by convention)

## Anonymous functions
### lambda
Defined with keyword lambda. Almost identical to the normal methods. They are of type proc but with a special flag.
````ruby
pow = lambda {|a,b| a**b} # definition
# calling
pow.call 2,3
pow[2,3]
pow.(2,3)
````
### proc
````ruby
double = Proc.new {|x| x * 2}
double.call(2)
double[2]
double.(2)
````
#### Differences between lambda and procs:
<ul>
<li> In proc -> ArgumentError <br> </li>
<li> return@ lambda -> return outside the body of the lambda <br> </li>
<li>return@proc -> returns putside of the body of the method, in whic the proc is called </li>
</ul>

# Class
````ruby
class Bacon
  def chunky?
    'yes, of course!'
  end
end

bacon = Bacon.new
bacon.chunky?      # => "yes, of course!
````
 initialize – sth like a constructor
Инстанционните променливи се префиксват с @ и се достъпват само отвътре
Ако искаме да достъпим такава променлива отвън - трябва да го направим чрез метод. Ако извикате #methods на нещо, ще получите масив от символи с имената на методите му.

# Modules
````ruby
module UselessStuff
  def almost_pi
    3.1415
  end
end

class Something
  include UselessStuff
end

Something.new.almost_pi # => 3.1415
````
Модулите в Ruby просто съдържат методи. Дефинират се подобно на класове:
````ruby
module UselessStuff
  def almost_pi
    3.1415
  end

  def almost_e
    2.71
  end
end
````

## all and any
````ruby
[1, 2, 3, nil].all?     # => false
[1, 2, 3, :nil].all?    # => true
[1, 2, 3, false].any?   # => true
````

# Symbols
Symbols always start with a colon (:). They must be valid Ruby variable names, so the first character after the colon has to be a letter or underscore (_); after that, any combination of letters, numbers, and underscores is allowed. <br>

Make sure you don't put any spaces in your symbol name—if you do, Ruby will get confused.
````ruby
my_first_symbol = :a
````

## converting symbols <-> strings

````ruby
Converting between strings and symbols is a snap.

:sasquatch.to_s
# ==> "sasquatch"

"sasquatch".to_sym
# ==> :sasquatch
````
Besides using .to_sym, you can also use .intern. This will internalize the string into a symbol and works just like .to_sym.

# upto, downto
If we know the range of numbers we'd like to include, we can use .upto and .downto. This is a much more Rubyist solution than trying to use a for loop that stops when a counter variable hits a certain value.

We might use .upto to print out a specific range of values:

````ruby
95.upto(100) { |num| print num, " " }
# Prints 95 96 97 98 99 100
````

and we can use .downto to do the same thing with descending values.

# Blocks

A Ruby block is just a bit of code that can be executed. Block syntax uses either do..end or curly braces ({}), like so:
````ruby
[1, 2, 3].each do |num|
  puts num
end
# ==> Prints 1, 2, 3 on separate lines

[1, 2, 3].each { |num| puts num }
# ==> Prints 1, 2, 3 on separate lines
````
Blocks can be combined with methods like .each and .times to execute an instruction for each element in a collection (like a hash or array).
Blocks are not objects, and this is one of the very few exceptions to the "everything is an object" rule in Ruby.

Because of this, blocks can't be saved to variables and don't have all the powers and abilities of a real object. For that, we'll need... procs!

# Procs
You can think of a proc as a "saved" block: just like you can give a bit of code a name and turn it into a method, you can name a block and turn it into a proc. Procs are great for keeping your code DRY, which stands for Don't Repeat Yourself. With blocks, you have to write your code out each time you need it; with a proc, you write your code once and can use it many times!

````ruby
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)
````
Procs are easy to define! You just call Proc.new and pass in the block you want to save. Here's how we'd create a proc called cube that cubes a number (raises it to the third power):

cube = Proc.new { |x| x ** 3 }
We can then pass the proc to a method that would otherwise take a block, and we don't have to rewrite the block over and over!

[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]
(The .collect! and .map! methods do the exact same thing.)

The & is used to convert the cube proc into a block (since .collect! and .map! normally take a block). We'll do this any time we pass a proc to a method that expects a block.

## Why bother saving our blocks as procs? There are two main advantages:

Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
Unlike blocks, procs can be called over and over without rewriting them. This prevents you from having to retype the contents of your block every time you need to execute a particular bit of code.

# Content:
## Comments	
## Kent Beck's rules of Simple Design:	
## Constants and vars	
## Operators and operations	
## Numbers	
## Printing	
## gets	
## if-else, unless	
## Loops	
## Case	
## Arrays
## argv	
## Files	
## Hashes	
## Methods	
## Anonymous functions	
## Class	
## Modules	
## Symbols	
## Blocks	
## Procs	

