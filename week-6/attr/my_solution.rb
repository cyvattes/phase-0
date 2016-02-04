#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  def initialize
    @name = "Cyrus Vattes"
  end
end


class Greetings
  def initialize
    @greeter = NameData.new
  end
  
  def hello
    puts "Hello, #{@greeter.name}! How are you today?" 
  end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
1:
What are these methods doing?
  The methods are creating and modifying the instance variables (which are passed the initial information when the methods are called).
How are they modifying or returning the value of instance variables?
  The methods are using instance variables (originally set equal to values input when the methods are called) which are passed between the methods. They are later modified by other methods, which set them equal to values in the same way.
  
2:
What changed between the last release and this release?
  :age has become a readable attribute, so the method to call it is no longer needed. Now it is called simply by accessing that symbol.
What was replaced?
  @age and the method to return it ("what_is_age") has been taken out and replaced with a readible attribute.
Is this code simpler than the last?
  Yes, although it's not a major change.

3:
What changed between the last release and this release?
  :age was given the reader AND writer attribute, allowing it to be changed with a single command.
What was replaced?
  Changing the :age symbol now only requires setting instance_of_profile.age equal to the new amount.
Is this code simpler than the last?
  This is a pretty big change compared to the last, and makes the code shorter and easier to read.


What is a reader method?
  The reader attribute lets outside methods (or classes) see a variable, but not change it.
What is a writer method?
  The writer attribute lets outside methods change a variable, but not view it.
What do the attr methods do for you?
  They allow you to pass information between classes wtihout global variables.
Should you always use an accessor to cover your bases? Why or why not?
  You should be extremely careful with the accessor attribute, as it can make debugging difficult and accidentally give methods too much access to others.
What is confusing to you about these methods?
  The way you access and pass them between classes and methods was confusing for me, and took some practice to understand.

=end