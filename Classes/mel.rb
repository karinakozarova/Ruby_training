class Person
  def initialize(name) @name = name                end
  def say_hi()         puts "My name is #{@name}!" end
  def sound_smart()    puts "1101000 1101001"      end

  def talk
    self.say_hi
    sound_smart
  end
end

mel = Person.new 'Mel'
mel.talk
