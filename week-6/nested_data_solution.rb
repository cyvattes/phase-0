# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

# p array[1][1][0]
# p array[1][1][1][0]
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

# p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
=begin
number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! { |element|
  
  if element.kind_of?(Array)
     
    element.map! {|inner| 
      inner +=5 
    }
    
  else
  element += 5
  end
  }

p number_array
=end


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! { |element|
  
  if element.kind_of?(Array)
    element.flatten.map! {|inner| inner += "ly" }
  else
    element
  end

}

p startup_names


=begin
REFLECTION

What are some general rules you can apply to nested arrays?
  Nested arrays and hashes work the same as any other arrays or hashes, and are pretty simple to deal with.
What are some ways you can iterate over nested arrays?
  If loops with the .each or .map methods work great.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  We used the .map! method to iterate over the inner arrays (rather than .each) because .each was operating non-destructively. We also made use of the .flatten method when we refactored the optional challenge, which allowed us to get rid of a bunch of if loops.


=end