numbers = {:one => :edno, :two => :dve}
puts numbers

a = numbers[:one]    
puts a

a = numbers[:three]   # => nil
puts a

a = numbers[:three] = :tri
puts a

a = numbers[:three]                   
puts a

a = numbers.fetch(:four, :added) 
puts a
