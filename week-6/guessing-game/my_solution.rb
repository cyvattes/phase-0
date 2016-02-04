# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Correct answer and guesses
# Output: high, low, correct, true, or false
# Steps:
=begin
initialize with answer

to check guesses
  check if guess == answer
    return :correct
  see if guess is too high
    return :high
  see if guess is too low
    return low
    
to check if solved
  if guess returned :correct, return true
  otherwise return false

=end

# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess == @answer
      @guess = :correct
    elsif guess < @answer
      @guess = :low
    else
      @guess = :high
    end
  end
  
  def solved?
    if @guess == :correct
      return true
    else
      return false
    end
  end
    
end
=end



# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess == @answer
      @guess = :correct
    elsif guess < @answer
      @guess = :low
    else
      @guess = :high
    end
    return @guess
  end
  
  def solved?
    if @guess == :correct
      return true
    else
      return false
    end
  end
    
end





# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  They can be passed around between each other, manipulated, and storred.
When should you use instance variables? What do they do for you?
  Instance variables are useful for passing between similar methods within the same class. They allow data to be stored and passed between methods.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  Flow control involves determining the logical steps to solve a given problem and creating loops, breaks, and returns that function smoothly. I had no issues with this challenge and everything worked on first try.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  Symbols are immutable and unique, and cannot be manipulated as easily as other variables. I think they are used because they can more easily be passed between methods.


=end