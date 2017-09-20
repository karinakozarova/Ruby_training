require 'mathn'

a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i

discr = Math.sqrt(b*b - 4*a*c)
puts discr
x1 = (discr - b)/2*a
x2 = (discr*(-1) - b)/2*a

print x1
print x2
