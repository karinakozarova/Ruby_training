 # Content:
 <ul>
<li> History of Ruby</li>
<li> Comments</li>
<li> Kent Beck's rules of Simple Design: </li>
<li> Constants and vars </li>
<li> Operators and operations </li>
<li> Numbers</li>
<li> Printing</li>
<li> gets</li>
<li> if-else, unless</li>
<li> Loops</li>
<li> Case</li>
<li> Arrays</li>
<li> argv</li>
<li> Files</li>
<li> Hashes</li>
<li> Methods</li>
<li> Anonymous functions</li>
<li> Class</li>
<li> Modules</li>
<li> Symbols</li>
<li> Blocks</li>
<li> Procs</li>
</ul>

# History of Ruby

Ruby was born in 1993, conceieved in a discussion between Yukihiro Matsumoto (“Matz”) and a colleague. They were discussing the possibility of an object-oriented scripting-language. Matz stated in ruby-talk:00382 that he knew Perl, but did not like it very much; that it had the smell of a “toy” language. He also discussed that he knew Python, but didn’t like it because it wasn’t a true object-oriented programming language. <br>

Matz wanted a language perfect for his needs: <br>
<ul>
<li> Syntactically Simple  </li>
<li> Having Iterators and Closures </li>
<li> Exception Handling </li>
<li> Garbage Collection </li>
<li> Portable </li>
</ul> <br>
Having looked around and not found a language suited for him, Yukihiro Matsumoto decided to create his own. After spending several months writing an interpreter, Matz finally published the first public version of Ruby (0.95) to various Japanese domestic newsgroups in December, 1995. <br>

## Ruby overview
Ruby is a dynamic, reflective, object-oriented, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan. <br>

According to its creator, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, and Lisp.It supports multiple programming paradigms, including functional, object-oriented, and imperative. It also has a dynamic type system and automatic memory management. <br>

Ruby has a wealth of other features, among which are the following:

+ Ruby has exception handling features, like Java or Python, to make it easy to handle errors.

+ Ruby features a true mark-and-sweep garbage collector for all Ruby objects. No need to maintain reference counts in extension libraries. As Matz says, “This is better for your health.”

+ Writing C extensions in Ruby is easier than in Perl or Python, with a very elegant API for calling Ruby from C. This includes calls for embedding Ruby in software, for use as a scripting language. A SWIG interface is also available.

+ Ruby can load extension libraries dynamically if an OS allows.

+ Ruby features OS independent threading. Thus, for all platforms on which Ruby runs, you also have multithreading, regardless of if the OS supports it or not, even on MS-DOS!

+ Ruby is highly portable: it is developed mostly on GNU/Linux, but works on many types of UNIX, Mac OS X, Windows, DOS, BeOS, OS/2, etc.


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
<li>The code must first be correct (as defined by tests); </li> 
<li>then it should be a clear statement of the design (what J.B.Rainsberger calls "no bad names"); </li> 
<li>then it should contain no duplication (of text, of ideas, or of responsibility);</li> 
<li>and finally it must be the smallest code that meets all of the above.</li> 
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

<blockquote>
Recall that instance variables begin with an @. This isn't just a Ruby convention—it's part of the syntax! Always start your instance variables with @.

Class variables are like instance variables, but instead of belonging to an instance of a class, they belong to the class itself. Class variables always start with two @s, like so: @@files.

Global variables can be declared in two ways. The first is one that's already familiar to you: you just define the variable outside of any method or class, and voilà! It's global. If you want to make a variable global from inside a method or class, just start it with a $, like so: $matz.

</blockquote>

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

# ::
Math::PI and Circle::PI.

See that double colon we just used? That's called the scope resolution operator, which is a fancy way of saying it tells Ruby where you're looking for a specific bit of code. If we say Math::PI, Ruby knows to look inside the Math module to get that PI, not any other PI (such as the one we created in Circle).


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


## ? vs !
When using a method we can use either **?** or **!**. **?** is obviously a question. It "asks" different things like __*defined?*__ asks if a variable is defined.

```ruby
i=0
if !defined? i #if i is not defined it becomes equal to 2
    i=2
end
puts i #prints 0 because i is already defined
```
When using a method, it performs itself but it doesn't remain after its end, e.g.:
```ruby
name = 'peter'
puts name.capitalize #prints Peter
puts name #prints peter
```

If we want to keep the changes to the word, we should add a **!**, for ex.:
```ruby
name = 'peter'
puts name.capitalize! #prints Peter and makes name ewual to it
puts name #prints Peter
```

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
A class is just a way of organizing and producing objects with similar attributes and methods. <br>

A basic class consists only of the class keyword and the name of the class.
<br>
Check it out:
````ruby
class NewClass
  # Class magic here
end
````

````ruby
class Bacon
  def chunky?
    'yes, of course!'
  end
end

bacon = Bacon.new
bacon.chunky?      # => "yes, of course!
````
## initialize
Instance variables are prefixed with @.If we call #methods,we will receive an array with symbols with the names of the methods.

You can think of initialize as the function that "boots up" each object the class creates.

````ruby
class Person
    def initialize

    end

end
````

````ruby
class Car
  def initialize(make, model)
    @make = make
    @model = model
  end
end

kitt = Car.new("Pontiac", "Trans Am")
````

## .new
We can create an instance of a class just by calling .new on the class name, like so:
````ruby
me = Person.new("Eric")
````

## Inheritance

Inheritance is the process by which one class takes on the attributes and methods of another, and it's used to express an is-a relationship. For example, a cartoon fox is a cartoon mammal, so a CartoonFox class could inherit from a CartoonMammal class. However, a Wizard is not an Elf , so it shouldn't inherit from the Elf class (even if they have a lot of magical attributes and methods in common). Instead, both Wizard and Elf could ultimately inherit from the same MagicalBeing class.


In Ruby, inheritance works like this:
````ruby
class DerivedClass < BaseClass
  # Some stuff!
end
````
where the derived class is the new class you're making and the base class is the class from which that new class inherits. You can read "<" as "inherits from."

### Override!
Sometimes you'll want one class that inherits from another to not only take on the methods and attributes of its parent, but to override one or more of them.

For instance, you might have an Email class that inherits from Message. Both classes might have a send method that sends them, but the e-mail version may have to identify valid e-mail addresses and use a bunch of e-mail protocols that Message knows nothing about. Rather than add a send_email method to your derived class and inherit a send method you'll never use, you can instead just explicitly create a send method in the Email class and have it do all the email-sending work.

This new version of send will override (that is, replace) the inherited version for any object that is an instance of Email.

## super

On the flip side, sometimes you'll be working with a derived class (or subclass) and realize that you've overwritten a method or attribute defined in that class' base class (also called a parent or superclass) that you actually need. Have no fear! You can directly access the attributes or methods of a superclass with Ruby's built-in super keyword.

The syntax looks like this:
````ruby
class DerivedClass < Base
  def some_method
    super(optional args)
      # Some stuff
    end
  end
end
````

When you call super from inside a method, that tells Ruby to look in the superclass of the current class and find a method with the same name as the one from which super is called. If it finds it, Ruby will use the superclass' version of the method.

## multiple inheritance

Any given Ruby class can have only one superclass. Some languages allow a class to have more than one parent, which is a model called multiple inheritance. This can get really ugly really fast, which is why Ruby disallows it.

However, there are instances where you want to incorporate data or behavior from several classes into a single class, and Ruby allows this through the use of mixins. We'll learn about mixins in a later lesson! For now, we'll demonstrate what happens if you try to do multiple inheritance in Ruby.

# Modules

You can think of a module as a toolbox that contains a set methods and constants. There are lots and lots of Ruby tools you might want to use, but it would clutter the interpreter to keep them around all the time. For that reason, we keep a bunch of them in modules and only pull in those module toolboxes when we need the constants and methods inside!

You can think of modules as being very much like classes, only modules can't create instances and can't have subclasses. They're just used to store things!

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

You can pull in pre-existing modules, but you can also make your own. Modules are super easy to make! You just use the module keyword, like so:
````ruby
module ModuleName
  # Bits 'n pieces
end
````

Like class names, module names are written in <b>CapitalizedCamelCase </b>, rather than lowercasewithunderscores.

It doesn't make sense to include variables in modules, since variables (by definition) change (or vary). Constants, however, are supposed to always stay the same, so including helpful constants in modules is a great idea.

Ruby doesn't make you keep the same value for a constant once it's initialized, but it will warn you if you try to change it. Ruby constants are written in ALL_CAPS and are separated with underscores if there's more than one word.

An example of a Ruby constant is PI, which lives in the Math module and is approximately equal to 3.141592653589793.

## namespacing
One of the main purposes of modules is to separate methods and constants into named spaces. This is called (conveniently enough) namespacing, and it's how Ruby doesn't confuse Math::PI and Circle::PI.

See that double colon we just used? That's called the scope resolution operator, which is a fancy way of saying it tells Ruby where you're looking for a specific bit of code. If we say Math::PI, Ruby knows to look inside the Math module to get that PI, not any other PI (such as the one we created in Circle).

## require

Some modules, like Math, are already present in the interpreter. Others need to be explicitly brought in, however, and we can do this using require. We can do this simply by typing

````ruby
require 'module'
````
## include

We can do more than just require a module, however. We can also include it!

Any class that includes a certain module can use those module's methods!

A nice effect of this is that you no longer have to prepend your constants and methods with the module name. Since everything has been pulled in, you can simply write PI instead of Math::PI.

````ruby
class Angle
  include Math
  attr_accessor :radians

  def initialize(radians)
    @radians = radians
  end

  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine
````

## mixins

What we did in the last exercise might not have seemed strange to you, but think about it: we mixed together the behaviors of a class and a module!

When a module is used to mix additional behavior and information into a class, it's called a mixin. Mixins allow us to customize a class without having to rewrite code!

````ruby

module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump
````

## extend

Whereas include mixes a module's methods in at the instance level (allowing instances of a particular class to use the methods), the extend keyword mixes a module's methods at the class level. This means that class itself can use the methods, as opposed to instances of the class.

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
````ruby
cube = Proc.new { |x| x ** 3 }
# We can then pass the proc to a method that would otherwise take a block, and we don't have to rewrite the block over and over!

[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]
```` 
(The .collect! and .map! methods do the exact same thing.)

The & is used to convert the cube proc into a block (since .collect! and .map! normally take a block). We'll do this any time we pass a proc to a method that expects a block.

## Why bother saving our blocks as procs? There are two main advantages:

Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
Unlike blocks, procs can be called over and over without rewriting them. This prevents you from having to retype the contents of your block every time you need to execute a particular bit of code.



