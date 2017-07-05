def ordinaize (num)
  last_digit = num % 10
  if(num<0)
    num *= -1
  end
  string_ending = 'th'
  case last_digit
  when 1 then string_ending = 'st'
  when 2 then string_ending = 'nd'
  when 3 then string_ending = 'rd'
  end

  "#{num}#{string_ending}"
end
puts ordinaize(1)
puts ordinaize(2)
puts ordinaize(3)
puts ordinaize(4)
puts ordinaize(-84)
puts ordinaize(745346)
