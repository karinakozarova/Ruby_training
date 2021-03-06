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

class Person
  def initialize(name, job)
    @name = name
    @job = job
  end

  def name
    @name
  end

  def job=(new_job)
    @job = new_job
  end
end

#############################################################

class Person
  attr_reader :name
  attr_writer :job
  def initialize(name, job)
    @name = name
    @job = job
  end
end

#############################################################

class Person
  attr_reader :name
  attr_accessor :job


  def initialize(name, job)
    @name = name
    @job = job
  end
end

#############################################################
# here starts OOP 2
#############################################################

module Circle

  PI = 3.141592653589793

  def Circle.area(radius)
    PI * radius**2
  end

  def Circle.circumference(radius)
    2 * PI * radius
  end
end

#############################################################

module MyLibrary
    FAVE_BOOK = "The Innovators"
end

#############################################################

puts Math::PI

#############################################################

require 'date'
puts Date.today

#############################################################

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

#############################################################

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

#############################################################
module MartialArts
def swordsman
    puts "I'm a swordsman."
end
end


class Ninja
  include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
  include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end
#############################################################

# ThePresent has a .now method that we'll extend to TheHereAnd
module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now

#############################################################

class Application
  attr_accessor :status
  def initialize; end
      private
      def password
          12345
      end
    public
    def print_status
        puts "All systems go!"
end

end
#############################################################

module Languages
FAVE = "C"
end

#############################################################

module Languages
  FAVE = "Ruby"  # This is what you typed before, right? :D
end

class Master
include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory

#############################################################

