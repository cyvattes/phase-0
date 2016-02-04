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
    @labels = labels
  end

  def sides
    return @labels.count
  end

  def roll
    return @labels.flatten
  end
end


# Refactored Solution








# Reflection