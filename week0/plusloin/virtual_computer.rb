class Computer

  attr_reader :username, :files

  @@users = Hash.new

  def initialize(username, password)
    @username = username
    @password = password
    @files = Hash.new
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "[#{time}] @#{@username}: new file #{filename} "
  end

  def delete(filename)
    time = Time.now
    @files.delete(filename)
    puts "[#{time}] @#{@username}: delete file #{filename} "
  end

  def self.get_users
    @@users
  end
end

my_computer = Computer.new("HappyLife", "qwerty")
julien = Computer.new("julien", "1234")
elsa = Computer.new("elsa", "alypst88")
julien.create("foo.txt")
elsa.create("bar.txt")
julien.create("secret")
puts "Filelist of #{julien.username}:"
puts julien.files
julien.delete("foo.txt")
puts julien.files
