# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
=begin
create empty array
iterate over passed in array
if digit % 3 == 0 && digit % 5 == 0
  push fuzzbuzz to new array
else if digit % 3 == 0
  push fizz to new array
else if digit % 5 == 0
  push buzz to new array
else
  push digit to new array
end
return new array

=end

# Initial Solution

# def super_fizzbuzz(array)
#   fizzbuzzed_array = []
#   array.each do |digit|
#     if (digit % 5 == 0) && (digit % 3 == 0)
#       fizzbuzzed_array.push("FizzBuzz")
#     elsif (digit % 5 == 0)
#       fizzbuzzed_array.push("Buzz")
#     elsif (digit % 3== 0)
#       fizzbuzzed_array.push("Fizz")
#     else
#       fizzbuzzed_array.push(digit)
#     end
#   end
#   return fizzbuzzed_array
# end



# Refactored Solution

def super_fizzbuzz(array)
  fb_arr = []
  array.map do |digit|
    case
      when digit % 15 == 0
        fb_arr.push("FizzBuzz")
      when digit % 3 == 0
        fb_arr.push("Fizz")
      when digit % 5 == 0
        fb_arr.push("Buzz")
      else
        fb_arr.push(digit)
    end #end case
  end #end iterator
  return fb_arr
end


# Reflection
=begin
What concepts did you review or learn in this challenge?
  I reviewed case statements.
What is still confusing to you about Ruby?
  I still think Ruby is pretty intuitive. It was sort of strange not typing semicolons at the end of lines after doing JavaScript and SQL the past couple weeks.
What are you going to study to get more prepared for Phase 1?
  I'd still like to practice more with enumerables and try and get my code shorter.

=end