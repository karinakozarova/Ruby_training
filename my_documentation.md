# Comments
```` ruby
# one line comment
=begin
multi
line
comment
=end
````
#constants and vars
Vars must start with lowercase, consts must be named with an uppercase and can't change their value.
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

# if else 
```` ruby 
if something
	do something
elsif something
	do something
else 
	do something
end
````

# arrays
```` ruby 
array_families = ["KK","AA","SD"]
puts array_families
````
# interpretator 
		irb --simple-prompt
