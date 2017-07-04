# DONT USE THIS!!! NO ENCRUPTION IS DONE!!!
require 'io/console'
filename = "user.txt"

print "Username: "
username = gets.chomp

print "Password: "
password = STDIN.noecho(&:gets).chomp
puts
# download previous file content
file = open(filename)
file_info = file.read
file.close

# write previous file content
file = open(filename,'w')
file.write(file_info)

# write current user and passwd
file.write("User: " + username + "\n")
file.write("Password: " + password + "\n\n")
file.close

=begin
# Use this for debugging only,shows usern and passwd
last_user_and_pass = `tail -n 3 user.txt` # 3 lines bcs of the \n
puts last_user_and_pass
=end
