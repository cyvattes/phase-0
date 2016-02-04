# Your Names
# 1) Kyle Rombach
# 2) Cyrus Vattes

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} #set names and ingredients of bakery items

  unless library[item_to_make] #retrurn argument error unless item_to_make is in the library
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  serving_size = library[item_to_make]  #set serving_size to ingredient number for item_to_make
  remaining_ingredients = num_of_ingredients % serving_size #set remaining_ingredients to remainder of ingredient number and servings

  
 if remaining_ingredients == 6 
    suggested_item = "1 cake and 1 cookie"
  elsif remaining_ingredients == 5
    suggested_item = "1 cake"
  elsif remaining_ingredients > 1
    suggested_item = "#{remaining_ingredients} cookies" 
   else
    suggested_item = "1 cookie" 
 end 
   
  if remaining_ingredients == 0 #let us know if there are remaining ingredients
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggested_item}."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
  If something confused you and takes a ton of time reading through it to understand, there's probably a better way to do it.
Did you learn any new methods? What did you learn about them?
  We didn't use any new methods in our code.
What did you learn about accessing data in hashes? 
  Every time I deal with hashes I realize that I overthink them a lot. We removed about 8 lines of code by accessing hash keys like we first learned.
What concepts were solidified when working through this challenge?
  It was really good to work with hashes more, as I get more comfortable from seeing them more often.

=end