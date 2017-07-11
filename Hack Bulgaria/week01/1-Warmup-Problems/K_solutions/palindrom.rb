def palindrome?(obj)
  result = false
  result = true if obj.to_s == obj.to_s.reverse!
  result
end

puts palindrome?(12342)