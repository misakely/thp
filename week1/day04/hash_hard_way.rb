# https://learnrubythehardway.org/book/ex39.html

# create a mapping of state to abbreviation
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "Michigan's abreviation is #{states["Michigan"]}"
puts "Florida's abreviation is #{states["Florida"]}"

# dp it by using the state then cities dict
puts "-" * 10
puts "Michigan has: #{cities[states["Michigan"]]}"
puts "Florida has: #{cities[states["Florida"]]}"

# puts every state abbreviation
puts "-" * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in state
puts "-" * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

# now do both at the same time
puts "-" * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end