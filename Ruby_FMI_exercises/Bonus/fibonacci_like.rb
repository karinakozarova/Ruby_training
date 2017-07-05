def fibonacci_like?(*num)
  truth = 1
  num.each_cons(3).map {|x,y,z|
    if x + y == z
    else truth = 0
    end}
    if truth == 1
      true
    else false
    end
end

puts fibonacci_like?(1,2,3,5,3)
