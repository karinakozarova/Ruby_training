# open file 
filename = "file.txt" 

# read file
file = open(filename)
original_file = file.read
puts file.read 
file.close

# write string to end of file
file = open(filename, "w") 
string1 = "\nTesty input 3"
file.write(original_file + string1) 

# write another string to start of file
string2 = "Beginning test input file_all\n"
file.truncate(0)
file.write(string2 + original_file + string1)

# close file
file.close()

