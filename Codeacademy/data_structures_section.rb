my_hash = { "name" => "Eric",
            "age" => 26,
            "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

pets = Hash.new

pets = Hash.new
pets["Key"] = "value"
puts pets["Key"]

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]
family = { "Homer" => "dad",
           "Marge" => "mom",
           "Lisa" => "sister",
           "Maggie" => "sister",
           "Abe" => "grandpa",
           "Santa's Little Helper" => "dog"
}
friends.each { |x| puts "#{x}" } # array
family.each { |x, y| puts "#{x}: #{y}" } # hash

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
languages.each {|x| puts x}

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |sub_array|
  sub_array.each do |x|
    puts x
  end
end

secret_identities = {
    "The Batman" => "Bruce Wayne",
    "Superman" => "Clark Kent",
    "Wonder Woman" => "Diana Prince",
    "Freakazoid" => "Dexter Douglas"
}

secret_identities.each{ |x,y|
  puts x+": "+y + "\n"
}

my_array = [1,2],[3,2]

my_hash = Hash.new
my_hash = {
    "hey" => "Jude",
}

lunch_order = {
    "Ryan" => "wonton soup",
    "Eric" => "hamburger",
    "Jimmy" => "sandwich",
    "Sasha" => "salad",
    "Cole" => "taco"
}

lunch_order.each{ |x,y|
  puts y
}
