# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Maeve Tierney]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin
def mode(array)
  new_hash = Hash.new(0)
  mode = Array.new
  
  array.each { |object| new_hash[object] += 1 }
  new_array = new_hash.sort_by { |key, value| value }.reverse.to_a 
  most_frequent = new_array[0][1]
  new_hash.each do |key, value|
    if value == most_frequent
      mode.push(key)
    end
  end
  return mode 
end
=end

# 3. Refactored Solution

def mode(array)
  object_frequency = Hash.new(0)
  frequency_array = Array.new
  mode = Array.new
  
  array.each { |object| object_frequency[object] += 1 } #create a hash for [array_object => frequency]
  frequency_array = object_frequency.sort_by { |key, value| value }.reverse.to_a #sort hash by value and push to array
  most_frequent = frequency_array[0][1] #most_frequent equals highest frequency value in array
  object_frequency.each do |key, value| #push most frequent key to new array "mode"
    if value == most_frequent
      mode.push(key)
    end
  end
  return mode 
end



# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
  - We decided to use a hash and an array. A hash allowed us to set a frequency value for each object passed in by the array parameter, which the new array we used allowed us to call a specific value (after they were sorted) without needing to know the key assigned to it.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
  - This challenge was harder to break down that the last because we didn't really know where to start. We caught ourselves going down a rabbit hole trying to figure out which methods to use before we'd finished laying out the step-by-step logic of the challenge first. We had to pause and get back to pseudocoding before we got too lost.
What issues/successes did you run into when translating your pseudocode to code?
  - The biggest problem we had was finding methods to use to sort the values of our hash. Finally, we decided we were overthinking the problem and ended up using a couple loops and arrays to make things work.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  - We ended up using .sort_by, .reverse, and .to_a when iterating over the hash we had made. The hardest one to implement was .sort_by, as it took us a few tries to get the syntax correct. It turns out that we had .reverse before .sort_by and it was causing the line to return errors.
=end