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
== is greater than =	<br>
... operator includes a range's first num and excludes the last
.. operator includes both the first and the last num in the range
<blockquote>
PEMDAS =  Parentheses Exponents Multiplication Division Addition Subtraction
</blockquote>

## combined comparison operator
The combined comparison operator looks like this: <=>. It returns 0 if the first operand (item to be compared) equals the second, 1 if first operand is greater than the second, and -1 if the first operand is less than the second

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

# if-else
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

```` ruby
puts "num is not 5" unless num == 5
puts "num is 5" if num == 5
````

# Loops

## While
Do is optional,always include it if one line loop. <br>
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
<b>
The each iterator creates a local scope!!!
</b>
````ruby
(0...n+1).each do |i|
	puts i
end
````

# Case

````ruby
case degrees_unit
when  'C' then result = degrees
when  'K' then result = degrees - 273.15
when  'F' then result = (degrees-32)*(5/9)
end
````

# Arrays

Saves references, not the elements <br>
__Size is dynamic.__ <br>

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
where time is a number - seconds

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

## methods
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
The hash syntax you've seen so far (with the => symbol between keys and values) is sometimes nicknamed the hash rocket style.
However, the hash syntax has changed in Ruby 1.9. Just when you were getting comfortable!

The good news is that the new syntax is easier to type than the old hash rocket syntax, and if you're used to JavaScript objects or Python dictionaries, it will look very familiar:
````ruby
new_hash = { one: 1,
  two: 2,
  three: 3
}
````
The two changes are:

You put the colon at the end of the symbol, not at the beginning;
You don't need the hash rocket anymore.
It's important to note that even though these keys have colons at the end instead of the beginning, they're still symbols!

puts new_hash
# ==> {:one=>1, :two=>2, :three=>3}
## default hash value
````ruby
my_hash = Hash.new("Trady Blix")
````
## .object_id
The .object_id method gets the ID of an object—it's how Ruby knows whether two objects are the exact same object. 

# methods
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
__ N.B! There can be only one parametre with variable count!!! __

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
this way, a parametres can be skipped

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

Biggest diff lambda - proc: In proc -> ArgumentError <br>
return@ lambda -> return outside the body of the lambda <br>
return@proc -> returns putside of the body of the method, in whic the proc is called

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
Класове се създават с class
Можем да дефинираме initialize - нещо като конструктор
Инстанционните променливи се префиксват с @ и се достъпват само отвътре
Ако искаме да достъпим такава променлива отвън - трябва да го направим чрез метод.Ако извикате #methods на нещо, ще получите масив от символи с имената на методите му.

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
## to include
Make sure to include the ! so that the user's string is modified in-place; otherwise, Ruby will create a copy of user_input.downcase and modify that instead.

## all and any
````ruby
[1, 2, 3, nil].all?     # => false
[1, 2, 3, :nil].all?    # => true
[1, 2, 3, false].any?   # => true
````

# symbols
Symbols always start with a colon (:). They must be valid Ruby variable names, so the first character after the colon has to be a letter or underscore (_); after that, any combination of letters, numbers, and underscores is allowed.

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
