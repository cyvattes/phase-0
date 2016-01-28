# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
def create_list(items)
  grocery_list = Hash.new
  list1 = items.split(" ")
  p list1
  # ["carrots", "apples", "cereal", "pizza"] 
  list1.each do |item| 
    grocery_list[item] = 1
  end
  grocery_list
end 



our_list = create_list("carrots apples cereal pizza") # => { "carrots" => 1, "apples" => 1, "cereal" => 1, "pizza" => 1 }
# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:
def add_item(our_list,name,quantity)
  our_list[name]=quantity
end 
puts add_item(our_list,"cherries",5)
puts our_list 
# Method to remove an item from the list
# input:
# steps:
# output:


def remove_item(our_list, item_name)
  our_list.delete(item_name)
end
puts remove_item(our_list, "apples")
puts our_list
# Method to update the quantity of an item
# input:
# steps:
# output:
def update_q(our_list, item_name, quantity)
  our_list[item_name] = quantity
end
puts update_q(our_list, "oranges", 2)
puts our_list
# Method to print a list and make it look pretty
# input:
# steps:
# output:

def pretty_printing(our_list)
  our_list.each do |x,y|
    puts "#{x}" + ": " + "#{y}"
    
  end
end
pretty_printing(our_list)


=begin
What did you learn about pseudocode from working on this challenge?
  - Pseudocode has been saving my brain, lately. Since the earlier challenges, when I realized that pseudocoding could save me a ton of time and heartache in my coding, I've been trying to get the logical steps on paper before writing anything. Part wa through this session (we didn't really pseudocode before-hand) I stopped the coding and took my partner aside to pseudocode so we had a solid plan before progressing. I'm starting to honestly love pseudocode. :)
What are the tradeoffs of using Arrays and Hashes for this challenge?
  - We decided to use a hash from the beginning, since we wanted a paired value. An array wouldn't give us the ability to pair a value with a key (the name of the grocery), so we opted against using one.
What does a method return?
  - The method returns the last value it was dealing with. In each of our methods, we made sure this value was of the hash we were manipulating.
What kind of things can you pass into methods as arguments?
  - Helpfully, you can pass pretty much anything you want into a method, including other methods. This was ironically the biggest issue we had in the challenge, as we kept forgetting to pass a non-local variable into our called methods, and were confused when we got argument errors.
How can you pass information between methods?
  - You can either call a method into another method, or you can set a non-local variable to the result of another method.
What concepts were solidified in this challenge, and what concepts are still confusing?
  - I feel much more comfortable with hashes after this challenge. Honestly, compared to multidimensional arrays, a hash is like a stroll in the park. That said, I'm still not totally solid in my understanding, and will be studying up on hashes over the next few days.

=end