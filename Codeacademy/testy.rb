class Computer
    @@users = Hash.new
    def initialize(username,password)
        @username = username
        @password = password
        @files = Hash.new
        @@users[username] = password
    end

    def create(filename)
        time = Time.now
        @files = {filename => time}
        puts "Done"
    end
    def Computer.get_users
        @@users
    end
end

my_computer = Computer.new("Linux")
