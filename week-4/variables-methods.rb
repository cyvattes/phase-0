#Release 2
puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp
puts "Hello, " + first + " " + middle + " " + last + "."

puts "What\'s your favorite number?"
fave_num = gets.chomp
new_num = fave_num.to_i + 1
puts "How about " + new_num.to_s + " as a BIGGER AND BETTER number?"
