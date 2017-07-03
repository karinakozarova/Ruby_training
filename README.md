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
</li>ul>
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

```` ruby 
array_families = ["KK","AA","SD"]
puts array_families
````

# interpretator 
	irb --simple-prompt

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