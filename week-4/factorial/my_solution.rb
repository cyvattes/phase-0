# Factorial

# I worked on this challenge [by myself, with: Maeve Tierney].


# Your Solution Below
def factorial(number)
  if number == 0
    return 1
  else
    counter = 1
    for n in (1..number)
      counter *= n
    end
    return counter
  end
end

#pseudocode here:
#if 0, return 1
#counter = 1
#for n in (1..number)
#counter *= n
#end
#return n
#
#