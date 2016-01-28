# Pad an Array

# I worked on this challenge [by myself, with: Ian Fricker]

# I spent [1.25] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, min_size (integer), value (blank to start)
# What is the output? (i.e. What should the code return?)
# outputs padded array (length of min_size)
# What are the steps needed to solve the problem?
=begin
find length of array
compare array length to min_size
set counter to array length
if array < min_size add value to array
  until counter == min_size
    add value to array
    counter +=1 
  end
end
return array
end
=end

# 1. Initial Solution

=begin

def pad!(array, min_size, value = nil) #destructive
  length = array.length
  count = length
  if min_size > length
    until count == min_size
      array[count] = value
      count += 1
    end
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  length = array.length
  new_array = Array.new
  array.each { |x| new_array.push(x) }
  count = length
  if min_size > length
    until count == min_size
      new_array[count] = value
      count += 1
    end
  end
  return new_array
end

=end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if min_size > array.length
    until array.length == min_size
      array << value
    end
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new
  array.each { |x| new_array.push(x) }
  if min_size > new_array.length
    until new_array.length == min_size
      new_array << value
    end
  end
  return new_array
end

# 4. Reflection

=begin
Were you successful in breaking the problem down into small steps?
  - Our pseudocode worked almost perfectly as soon as it was translated into code. I feel that we were very successful at breaking the problem into useful bits.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  - Our pad! method worked immediatelly out of the box. The pad method stumped us (we had 2 failures in rspec) for almost an hour, but we determined the issue was that we were not returning a unique object, so the spec file was not seeing mismatched object id numbers.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  - Our initial pad method failed 2 tests because the returned array was not unique. To fix this, we created an each iterator to pass each item in array to a new array piece by piece. This solved the problem on the first try.
When you refactored, did you find any existing methods in Ruby to clean up your code?
  - When refactoring, we were able to use push and .length to remove several lines of code and two variables.
How readable is your solution? Did you and your pair choose descriptive variable names?
  - I think the final solution is very readable. All variables are descriptive, save for "x", which we tossed into our each iterator at the last minute. Because of the simplicity of this line of code, I opted to keep the variable name as it is.
What is the difference between destructive and non-destructive methods in your own words?
  - Destructive methods permanently change the input value while non-destructive methods keep the original as-is while making changes to copies of the original.

=end