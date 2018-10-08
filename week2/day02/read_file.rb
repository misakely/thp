def get_file_as_string(filename)
  data = ''
  f = File.open(filename)
  f.each_line do |line|
    data += line
  end
  data
end

##### MAIN #####

data = get_file_as_string 'test'

# print out the string
puts data
