# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  if list_of_words.empty? == true
    return nil
  else
    #More succinct way of solving problem is below in comments.
    #list_of_words.sort!{|x, y| x.length <=> y.length}
    shortest = list_of_words[0]
    list_of_words.each do |n|
      if n.length < shortest.length
      shortest = n
      end
    end
    return shortest
    #return list_of_words[0]
  end
end
