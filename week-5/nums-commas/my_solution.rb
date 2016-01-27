# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A single integer
# What is the output? (i.e. What should the code return?) Anumber, separated by commas, as a string
# What are the steps needed to solve the problem?

=begin
define method with one argument (x)
split up x and set to array
set counter to 0
start 'each' loop for array
	increase counter by 1
	check if counter modulus 3 == 0
		if yes, add "," to new array
		end
	add current number to new array
	end
end
return new array
end
=end

# 1. Initial Solution
=begin
def separate_comma(num)
  rev_array = num.to_s.reverse.split("")
  output_array = []
  counter = 0
  
    rev_array.each do |x|
      
      if (counter%3) == 0 && output_array != []
          output_array.push ","
      end
      
      output_array.push x
      counter += 1
    
    end
output = output_array.reverse.join
return output
end
=end

# 2. Refactored Solution

def separate_comma(num)
  #define variables
  rev_array = num.to_s.reverse.split("") #reverse array to count from end of num
  output_array = []
  counter = 0
    #begin .each loop
    rev_array.each do |x|
      if (counter%3) == 0 && output_array != [] #check for 3rd place
          output_array.push ","
      end
      output_array.push x
      counter += 1
    end
return output_array.reverse.join
end


# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
  - First thing was to open a text document and start scribbling down the basic steps. I knew that the input needed to be split and fed into an array so that I could later add the comma, so this was where I started. The counter and (if counter modulus 3 ==0) steps came next, and the rest followed pretty smoothly.
Was your pseudocode effective in helping you build a successful initial solution?
  - Pseudocoding saved me a ton of time as I was able to get an idea for the necessary logic to solve the problem. Regardless, it still took some tinkering to get the comma in the right place.
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  - I have seen the .split method before, but this was my first time using it. At first, I forgot to put the empty qoute argument behind it, so my program returned errors. It took a few minutes to figure out how .split wanted its argument given. I also had to implement .reverse (this came at the end) because I realized my array was iterating (and placing commas) from the front.
How did you initially iterate through the data structure?
  - I started with an .each iterator, and kept this in the final. I'm pretty comfortable using .each, and decided this would be simpler than a different iterator. I also used an if loop with a counter variable to place the commas after every third numeral. I ended up having to place an && statement in the if loop to stop the program from placing a zero at the beginning.
Do you feel your refactored solution is more readable than your initial solution? Why?
  - I wasn't sure how to simplify much of my code without delving into methods I haven't learned yet, so I added a couple comments and removed an unnessesary variable at the end.

=end