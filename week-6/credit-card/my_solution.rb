# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: true/false
# Steps:
=begin
remove any spaces from input
count backwards from 2nd to last digit
  double every other digit, ending at 1st
add up all digits (break up >9 digits)
if sum % 10 == 0, valid = true


=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard
  def initialize(cc_num)
    @cc_num = Array.new
    cc_num.delete!(" ")
    cc_num.each_char { |number| @cc_num.push(number) }
    unless cc_num.length == 16
      raise ArgumentError.new("Credit Card Number must be 16 digits")
    end
  end
  
  def check_card
    tester_array = Array.new
    tester_array = @cc_num.collect { |number| number.to_i }.reverse
    counter = 0
    sum = 0
    tester_array.each do |index|
      if (counter % 2) != 0
        tester_array[counter] = index * 2
      end
      counter += 1
    end

    tester_array.each do |index|
        if index > 9 
          sum += (1 + (index-10))
        else
          sum += index
        end
    end
    
    if (sum % 10) == 0
      return true
    else
      return false
    end
    
  end
  
end

new_cc = CreditCard.new("4563 9601 2200 1999")
p new_cc.check_card

=end

# Refactored Solution

class CreditCard
  def initialize(cc_num)
    @cc_num = Array.new
    cc_num.to_s.each_char { |number| @cc_num.push(number) }
    unless @cc_num.length == 16
      raise ArgumentError.new("Credit Card Number must be 16 digits")
    end
  end
  
  def check_card
    tester_array = Array.new
    tester_array = @cc_num.collect { |number| number.to_i }.reverse
    counter = 0
    sum = 0
    tester_array.each do |index|
      if (counter % 2) != 0
        tester_array[counter] = index * 2
        
     
      end
      if tester_array[counter] > 9 
          sum += (1 + (tester_array[counter]-10))
        else
          sum += tester_array[counter]
        end
      counter += 1
    end

    # tester_array.each do |index|
    #     if index > 9 
    #       sum += (1 + (index-10))
    #     else
    #       sum += index
    #     end
    # end
    
    if (sum % 10) == 0
      return true
    else
      return false
    end
    
  end
  
end


# Example given 4563 9601 2200 1999
# Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
# Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
# Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
# Step 3: 70 (total above) % 10 == 0
# Step 4: Profit



# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
  The hardest part of this pair, ironically (because it's been the easiest part of other challenges) was iterating over our array.
What new methods did you find to help you when you refactored?
  We used .collect in both solutions, allowing us to change our numbers from strings to integers.
What concepts or learnings were you able to solidify in this challenge?
  This challenge helped solidify logical steps and planning needed to solve a problem. I wasn't sure how to split the doubled numbers, but it turned out to be pretty easy with a simple loop.

=end