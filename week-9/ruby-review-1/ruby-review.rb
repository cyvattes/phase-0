
# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: Ian Fricker].
# I spent [0.25] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
=begin
initialize pezDispenser to take one argument, array, called flavors
define new method that counts number of pez
define new method that removes next pez
define new method that adds a pez
define new method that displays flavors in dispenser 

=end
# Initial Solution

# class PezDispenser
#   def initialize(flavors)
#     @flavors = flavors    
#   end

#   def pez_count
#     return @flavors.length
#   end
  
#   def see_all_pez
#     return @flavors    
#   end
  
#   def add_pez(pez_flavor)
#     @flavors.push(pez_flavor)
#   end
  
#   def get_pez
#     @flavors.delete_at(0)
#   end
  
# end



# Refactored Solution


class PezDispenser
  def initialize(flavors)
    @flavors = flavors    
  end

  def pez_count
    return @flavors.length
  end
  
  def see_all_pez
    return @flavors    
  end
  
  def add_pez(pez_flavor)
    @flavors.push(pez_flavor)
  end
  
  def get_pez
    @flavors.delete_at(0)
  end
  
end


# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
=begin
What concepts did you review in this challenge?
  We reviewed the use and calling of classes in Ruby.
What is still confusing to you about Ruby?
  I think Ruby is really easy to use, and don't usually feel confused by it.
What are you going to study to get more prepared for Phase 1?
  I feel comfortable with classes in Ruby, but I will be studying more methods.

=end