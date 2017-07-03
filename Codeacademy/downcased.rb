user_input = gets.chomp
user_input.downcase!
if user_input.include?"s"
 user_input.gsub!(/s/,'th')
else
    print "No s enter"
end
puts user_input





