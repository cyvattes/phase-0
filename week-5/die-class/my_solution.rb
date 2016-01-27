# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

=begin

class Die
  def initialize(sides)
    unless sides > 1
      raise ArgumentError.new("Number must be greater than 1")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    random_sides = Random.new
    return random_sides.rand(@sides)+1
  end
end

=end

# 3. Refactored Solution

class Die
  def initialize(sides)
    unless sides > 1
      raise ArgumentError.new("Number must be greater than 1")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    prng = Random.new
    return prng.rand(@sides)+1
  end
end

# 4. Reflection
=begin

What is an ArgumentError and why would you use one?
  - An argument error occurs when you pass the wrong number (or an invalid) argument into a method.
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  - I implemented the .rand method. I initially had some trouble with this because (when using .rand(100)) it was giving me random numbers between 0 and 99. I solved this by adding 1 at the end.
What is a Ruby class?
  - A class in Ruby is a collection of methods and variables that can be used to store and differentiate between sets of information passed to it.
Why would you use a Ruby class?
  - The common example of a class is a defined set of characteristics for different vehicles. The class can store different variables that all included objects will share. If you want to use multiple methods that manipulate the same information, a class is a good way to effectively do this.
What is the difference between a local variable and an instance variable?
  - A local variable is located inside a method, and does not exist outside of that method. An instance variable exists within each instance of an object, and can essentially contain different information for different objects at the same time.
Where can an instance variable be used?
  - An instance variable is used inside a class, and can be called by methods of that class. It persists between different objects.

=end