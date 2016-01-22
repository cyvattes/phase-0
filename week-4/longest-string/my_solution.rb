# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  if list_of_words.empty? == true
    return nil
  else
    #More succinct way of solving problem is below in comments.
    #list_of_words.sort!{|x, y| y.length <=> x.length}
    longest = list_of_words[0]
    list_of_words.each do |n|
      if n.length > longest.length
      longest = n
      end
    end
    return longest
    #return list_of_words[0]
  end
end