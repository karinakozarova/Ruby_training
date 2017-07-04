def likes_to_drink(name,*drinks)
  puts "#{name} likes to drink #{drinks.join(', ')}."
end

def hello_human(name = 'Human')
  puts "Hello, #{name}."

end

likes_to_drink("Ben", "Vodka")
likes_to_drink("Kari","tea", "coffee")

hello_human
hello_human 'Ben'
