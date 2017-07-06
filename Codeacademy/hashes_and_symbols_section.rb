my_hash = Hash.new

matz = { "First name" => "Yukihiro",
         "Last name" => "Matsumoto",
         "Age" => 47,
         "Nationality" => "Japanese",
         "Nickname" => "Matz"
}

matz.each do |x,y| puts y end

# access one that doesn't exist
creatures = { "weasels" => 0,
              "puppies" => 6,
              "platypuses" => 3,
              "canaries" => 1,
              "Heffalumps" => 7,
              "Tiggers" => 1
}

creatures["dsfds"]

menagerie = { :foxes => 2,
              :giraffe => 1,
              :weezards => 17,
              :elves => 1,
              :canaries => 4,
              :ham => 1
}

puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

symbol_hash = {
    :one => 1,
    :two => 2,    # Fill in these two blanks!
    :three => 3,
}


:sasquatch.to_s
# ==> "sasquatch"

"sasquatch".to_sym
# ==> :sasquatch

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!

symbols = []

strings.each do |x|
  symbols.push(x.to_sym)
end
