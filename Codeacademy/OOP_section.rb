class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end

  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description

#############################################################

class Person
    def initialize(name)
        @name = name
    end
end

matz =  Person.new("Yukihiro")

#############################################################

class Computer
  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}

  def initialize(username, password)
    @username = username
    @password = password
  end

  def current_user
    @username
  end

  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.

#############################################################

class MyClass
  $my_variable = "Hello!"
end

puts $my_variable

#############################################################

class Person
  def initialize(name,age,profession)
    @name = name
    @age = age
    @profession = profession
  end
end

#############################################################

class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0

  def initialize(name)
    @name = name
    # Increment your class variable on line 8
    @@people_count += 1
  end

  def self.number_of_instances
    # Return your class variable on line 13
    @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"

#############################################################

def create_record(attributes, raise_error = false)
  record = build_record(attributes)
  yield(record) if block_given?
  saved = record.save
  set_new_record(record)
  raise RecordInvalid.new(record) if !saved && raise_error
  record
end

#############################################################

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error

#############################################################

class Application
  def initialize(name)
    @name = name
  end
end

# inherintance
class MyApp < Application

end

#############################################################

=begin Create a new class, Dragon, that inherits from Creature. Give your derived class a fight method that overrides Creature's; instead of returning "Punch to the chops!", it should return "Breathes fire!".
=end

class Creature
  def initialize(name)
    @name = name
  end

  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature
    def fight
        "Breathes fire!"
    end
end

#############################################################

class Creature
  def initialize(name)
    @name = name
  end

  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
    def fight
        puts "Instead of breathing fire..."
        super
    end
end

#############################################################

class Creature
  def initialize(name)
    @name = name
  end
end

class Person
  def initialize(name)
    @name = name
  end
end

class Dragon < Creature; end
class Dragon < Person; end

#############################################################
class Message
@@messages_sent = 0
    def initialize (from,to)
            @from = from
            @to = to
            @@messages_sent += 1
    end
end

my_message = Message.new("Kari", "You")

#############################################################

class Message
@@messages_sent = 0
    def initialize (from,to)
            @from = from
            @to = to
            @@messages_sent += 1
    end
end

class Email < Message

    def initialize(from,to)
        super
    end
end
my_message = Message.new("Kari", "You")

#############################################################

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  public    # This method can be called from outside the class.

  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end

  private   # This method can't!

  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number

#############################################################

class Dog
    def initialize(name,breed)
        @name = name
        @breed = breed
    end

    public
    def bark
        puts "Woof!"
    end

    private
    def id
        @id_number = 12345
    end
end

#############################################################
