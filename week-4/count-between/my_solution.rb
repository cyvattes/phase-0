# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  if list_of_integers.empty? == true
    return 0
  else
    counter = 0
    list_of_integers.each do |n|
      if lower_bound <= n and n <= upper_bound
        counter += 1
      end
    end
    return counter
  end
end

#count_between([1..10], 0, 100)
#counter = 0
#list_of_integers.each do |n|
#if lower_bound <= n <=upper_bound
#counter += 1
#end
#return counter
#
#
#