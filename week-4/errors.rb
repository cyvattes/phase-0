# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#  end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#   errors.rb
# 2. What is the line number where the error occurs?
#   170
# 3. What is the type of error message?
#   Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
#   It shows that the translator is expecting an "end" statement befor ethe end of the code
# 5. Where is the error in the code?
#   Line 16
# 6. Why did the interpreter give you this error?
#   The while loop in the cartman_hates method was not closed with an end command

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#   36
# 2. What is the type of error message?
#   Name Error
# 3. What additional information does the interpreter provide about this type of error?
#   A variable or method is called which is not defined
# 4. Where is the error in the code?
#   "south_park" on line 36 is not defined
# 5. Why did the interpreter give you this error?
#   "south_park" is called, but not defined or set equal to anything

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#   51
# 2. What is the type of error message?
#   No Method Error
# 3. What additional information does the interpreter provide about this type of error?
#   Undefined method for main:Object
# 4. Where is the error in the code?
#   "cartman()" on line 51
# 5. Why did the interpreter give you this error?
#   Line 51 calls the method cartman, which is not defined

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#   70
# 2. What is the type of error message?
#   Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#   Wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#   The interpreter cannot pass an argument from line 70 into line 66
# 5. Why did the interpreter give you this error?
#   Calling the method on line 70 passes an argument to the method on line 66, when no argument is expected.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#   89
# 2. What is the type of error message?
#   Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#   Wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#   Line 89 is calling a method without an argument (which it is expecting)
# 5. Why did the interpreter give you this error?
#   The defined method, cartman_says, is expecting 1 argument to be passed to it. It is called without an argument.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#   110
# 2. What is the type of error message?
#   Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#   Wrong number or arguments (1 for 2)
# 4. Where is the error in the code?
#   Similar to the last 2 errors, the method is called with the wrong number of arguments.
# 5. Why did the interpreter give you this error?
#   The method is expecting 2 arguments, but is only passed 1.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#   125
# 2. What is the type of error message?
#   Type Error
# 3. What additional information does the interpreter provide about this type of error?
#   String can't be coerced into FuxNum
# 4. Where is the error in the code?
#   The code is trying to multiply an integer and a string, which it can't do.
# 5. Why did the interpreter give you this error?
#   The interpreter doesn't know how to multiply a number and a string.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#   140
# 2. What is the type of error message?
#   Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
#   "Divided by 0"
# 4. Where is the error in the code?
#   The code is trying to divide 20 by 0, which can't be done.
# 5. Why did the interpreter give you this error?
#   The interpreter recognizes that you cannot divide by 0.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#   156
# 2. What is the type of error message?
#   Load Error
# 3. What additional information does the interpreter provide about this type of error?
#   Cannot load such file
# 4. Where is the error in the code?
#   The code requires another file (cartmans_essay.md) to be present.
# 5. Why did the interpreter give you this error?
#   The required file is missing, so the interpreter returns a load error.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#   The expected keyword error was the hardest to read
#How did you figure out what the issue with the error was?
#   Since the error was pointing at the end of the code, and a method was called in that section, I figured that's where the end code was missing.
#Were you able to determine why each error message happened based on the code? 
#   Yes. The while loop was not closed with an end code.
#When you encounter errors in your future code, what process will you follow to help you debug?
#   Reading through the clues given by the error messages is the first and best step. After that, you can follow the logic of the code to find an error.