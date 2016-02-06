# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: random string from array
# Steps: 
=begin
def initialize(labels)
count number of items in labels array
  if labels is empty, raise argument error
create new array with items from labels
end

def sides(labels)
return count of labels
end

def roll(labels)
return shuffle of labels
end

=end

# Initial Solution

class Die
  def initialize(labels)
    unless labels.count > 0
      raise ArgumentError.new("Array must not be empty")
    end
    @labels = Array.new
    labels.each { |label| @labels.push(label) }
  end

  def sides
    return @labels.count
  end

  def roll
    return @labels.shuffle
  end
end


# Refactored Solution








# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  The main difference was that this challenge passed in an array of strings instead of a simple integer. The logic was almost identical.
What does this exercise teach you about making code that is easily changeable or modifiable? 
  Similar problems can often be solved with the same or similar methods and logic.
What new methods did you learn when working on this challenge, if any?
  No new methods were used in this challenge.
What concepts about classes were you able to solidify in this challenge?
  I was unable to get my final array to flatten (it always returned each element inside a sub-array), so I feel that I was unable to solidify my skills with this challenge.

=end