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


##Release 4
#Address
#https://github.com/cyvattes/phase-0/blob/master/week-4/address/my_solution.rb

#Math
#https://github.com/cyvattes/phase-0/blob/master/week-4/math/my_solution.rb


##Reflection
#How do you define a local variable?
  #You simply type the name of a variable and set it equal to something (ex: num = 2)
#How do you define a method?
  #Enter the "def" command, followed by the method name, any arguments, and the base code block.
  
    #ex:
    #def method(arg1, arg2)
      #some code here
    #end
  
#What is the difference between a local variable and a method?
  #A local variable is an object used within the code in which it is defined and only contains a single piece of information. A method, on the other hand, is a block of code that can be called from another place it its file, or even from another program.
#How do you run a ruby program from the command line?
  #You can simply enter "ruby" followed by the file name (this tells the computer to use the ruby translator to open the file).
#How do you run an RSpec file from the command line?
  #Similar to running a ruby program, you enter "rspec" followed by the file name.
#What was confusing about this material? What made sense?
  #At first, it took me a while to figure out what was meant by "use RSpec to run the spec file". After some practice, this made a lot more sense. Using ruby to write and run the code for different challenges was pretty straightforward, and made perfect sense.