def count_vowels(str)
  length = str.size
  str.downcase!
  i = 0
  count = 0
  while i <= length
    case str[i]
      when 'a','e','i','o','y','u' then count += 1
    end
    i += 1
  end
  count
end



def consonants(str)
  length = str.size
  str.downcase!
  i = 0
  consonants = 0
  while i <= length
    case str[i]
      when 'b', 'c','d','f','g','h','j','k','l',
          'm','n','p','q','r','s','t','v','w','x','z' then consonants += 1
    end
    i += 1
  end
  consonants
end

puts count_vowels("abcd efgh")
puts consonants("abcd efgh")
