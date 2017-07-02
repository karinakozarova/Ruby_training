filename = ARGV[0] 	# choose which file to open
file = open(filename)
puts "Here is the content of #{filename}"
puts file.read # prints content
puts "\n\tFile address:  #{file}"   

