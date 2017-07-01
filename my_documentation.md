# Comments
```` ruby
# one line comment
=begin

multi
line
comment

=end

````
# Constants and vars
Vars must start with lowercase, consts must be named with an uppercase and can't change their value.

Global vars should start with $. __Globals are bad.__ <br>
Instance variables are preceded by a @.<br>
Class variables are preceded by @@.<br>

# Assignment operator
== is greater than =

# puts 

```` ruby 
puts "String" + variable
puts string[0..4]     #prints first 5 chars
puts string.split      #every word on new line
puts string.capitalize
puts string.reverse
puts string.upcase
puts string.downcase
puts string.length
````

````ruby
date = "6.10.2000"
puts date.split(".") # puts num on new line
````
# gets

```` ruby 
variable = gets
name = gets.to_i     # makes it int
name = gets.chomp #removes \n

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

unless num>5 # if num<5
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
while count_while<=100 do	
	puts count_while
	count_while+=1
end
````
### Post while:
```` ruby 
begin
	num += 1
	puts num
end while num<100
````
## Until
```` ruby
until num>100 
	puts num
	num+=1
end
````
# arrays
```` ruby 
array_families = ["KK","AA","SD"]
puts array_families
````
# interpretator 
	irb --simple-prompt
