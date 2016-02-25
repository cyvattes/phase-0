
# I worked on this challenge [by myself, with: Ian Fricker].
# This challenge took me [0.5] hours.

# Pseudocode
=begin
def is_fibonacci?(num)
while x <= num
  count over fibonacci number
  if num == fib_num return true
  else return false

x = 0



=end
# Initial Solution


# def is_fibonacci?(num)
# p1 = 0
# p2 = 1
# new_num = 0
# fib_arr = []
#   while  new_num <= num do
#     fib_arr.push(new_num)
#     new_num = p1 + p2
#     p1 = p2
#     p2 = new_num
#   end
#   if fib_arr.include?(num)
#     return true
#   else
#     return false
#   end
  
  
# end


# Refactored Solution

def is_fibonacci?(num)
p1 = 0
p2 = 1
new_num = 0
fib_arr = []
  while  new_num <= num do
    fib_arr.push(new_num)
    new_num = p1 + p2
    p1 = p2
    p2 = new_num
  end
  fib_arr.include?(num)
end


# Reflection
=begin
What concepts did you review in this challenge?
  We reviewed math and looping.
What is still confusing to you about Ruby?
  We spent some time trying to make our code more succinct, and not use 4 variables in our code, but ended up leaving it as it was.
What are you going to study to get more prepared for Phase 1?
  I'll definitely be studying more methods.

=end




