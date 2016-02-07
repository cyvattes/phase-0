# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
=begin
create array containing B, I, N, G, and O
shuffle array and store 0th unit
case statement for 0th unit of the array:
  B: store random integer between 1 and 15
  I: store random integer between 16 and 30
  N: store random integer between 31 and 45
  G: store random integer between 46 and 60
  O: store random integer between 61 and 75
return letter and number

=end

# Check the called column for the number called.
  #fill in the outline here
=begin
case statement for letter
  B: store 0
  I: store 1
  N: store 2
  G: store 3
  O: store 4
check each subarray at stored index for number

=end

# If the number is in the column, replace with an 'x'
  #fill in the outline here
=begin
if above check returns true, array[row of number][index] becomes "x"

=end

# Display a column to the console
  #fill in the outline here
=begin
puts letter
puts array[0][index]
puts array[1][index]
puts array[2][index]
puts array[3][index]
puts array[4][index]

=end

# Display the board to the console (prettily)
  #fill in the outline here
=begin
p array[0]
p array[1]
p array[2]
p array[3]
p array[4]

=end

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call #call a new letter/number combo
    letter_generator = ["B", "I", "N", "G", "O"]
    number_generator = Random.new
    letter_generator.shuffle!
    @letter = letter_generator[0]
    @number = number_generator.rand(1..100)
    puts "Calling #{@letter}-#{@number}!"
  end
  
  def check #check if called number exists and mark it
    case @letter
      when "B"
        column = 0
      when "I"
        column = 1
      when "N"
        column = 2
      when "G"
        column = 3
      when "O"
        column = 4
    end
    @bingo_board.map do |row|
      if row[column] == @number
        row[column] = "x"
      else
        row[column]
      end
    end
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end
  
end
=end
# Refactored Solution

class BingoBoard #Following true Bingo rules

  def initialize(board)
    @bingo_board = board
    @bingo_board[2][2] = "x"
  end

  def call #call a new letter/number combo
    letter_generator = ["B", "I", "N", "G", "O"]
    number_generator = Random.new
    letter_generator.shuffle!
    @letter = letter_generator[0]
    case @letter
      when "B"
        @number = number_generator.rand(1..15)
      when "I"
        @number = number_generator.rand(16..30)
      when "N"
        @number = number_generator.rand(31..45)
      when "G"
        @number = number_generator.rand(46..60)
      when "O"
        @number = number_generator.rand(61..75)
    end
    puts "Calling #{@letter}-#{@number}!"
  end
  
  def check #check if called number exists and mark it
    case @letter
      when "B"
        column = 0
      when "I"
        column = 1
      when "N"
        column = 2
      when "G"
        column = 3
      when "O"
        column = 4
    end
    @bingo_board.map do |row|
      if row[column] == @number
        row[column] = "x"
      else
        row[column]
      end
    end
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end
  
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  Pseudocoding was harder than the actual code for this challenge, but it made everything super simple. I just had to follow my own steps.
What are the benefits of using a class for this challenge?
  The class lets you create different interconnected methods that use the same variables while initializing the program once.
How can you access coordinates in a nested array?
  You access nested arrays the same way as normal, except calling the outer index, then the inner. ex: array[2][2] calls the middle coordinate of a 5x5 nested array.
What methods did you use to access and modify the array?
  I used the .map method to iterate over the arrays and make changes if neccessary.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  I have seen case statements before, but this was my first time using one. In addition, this was my first time using .rand(x..y). They are both pretty self-explanitory, and I had no problems or errors when using them.
How did you determine what should be an instance variable versus a local variable?
  I chose to call important pieces of information that would be called by other methods as local variables. Everything that didn't need to be passed to another method was left as an instance variable.
What do you feel is most improved in your refactored solution?
  My "refactored" solution was actually my initial solution to the problem. I reverse refactored the code to make it solve the basics of the challenge (my "refactored" code solved for the bonus as well).

=end
