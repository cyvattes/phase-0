# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Maeve Tierney].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: total(array)
# Output: return counter

# Steps to solve the problem.
#
#def total(array)
#
#
#
#
#
#
# 1. total initial solution
def total(array)
 	sum = 0
 	array.each do |x|
 		sum+=x 
 	end 
 	return sum 
end 

# 3. total refactored solution

def total(array)
 	sum = 0
 	array.each do |x|
 		sum+=x 
 	end 
 	return sum 
end 

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: def sentence_maker(sentence)
# Output: sentence.each do |y|
# Steps to solve the problem.
=begin
	create an method that takes an array as an argument 
	apply each statement to array 
=end

# 5. sentence_maker initial solution


def sentence_maker(sentence)
 	one_sentence = ''
 	sentence.each do |y|
 		one_sentence+= y + ' ' 
 	end
 	return one_sentence
end


# 6. sentence_maker refactored solution

def sentence_maker(sentence)
 	one_sentence = ''
 	sentence.each do |y|
 		one_sentence+=y.to_s + ' ' 
 	end
 	one_sentence.chop!
 	one_sentence.capitalize!
 	one_sentence += '.' 
 	return one_sentence
end
