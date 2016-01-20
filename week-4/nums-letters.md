What does puts do?
  - puts prints the output to the screen and adds a new line below it. It doesn't return a value.
What is an integer? What is a float?
  - An integer is a terminating number (positive or negative) with no decimal point. A float is a number with (floating) decimal points.
What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  - Float division is the same kind of division (with decimal points) that we all learned as kids, whereas integer division will truncate the answer, dropping any decimal off the end and giving you an answer that is rounded down. For example, 9.0/2.0 = 4.5, but 9/2 = 4 (float, then integer).

```ruby
puts 365 * 24
puts 365 * 10 *24 * 60
```

!(defining-variables.rb)[https://github.com/cyvattes/phase-0/blob/master/week-4/defining-variables.rb]
!(simple-string.rb)[https://github.com/cyvattes/phase-0/blob/master/week-4/simple-string.rb]
!(basic-math.rb)[https://github.com/cyvattes/phase-0/blob/master/week-4/basic-math.rb]


How does Ruby handle addition, subtraction, multiplication, and division of numbers?
  - Addition and multiplication are almost identicle in ruby (2*3 is the same as 2+2+2). Subtraction counts backward from the previous number. Division is a little more complex, as the results differ from intergers to floats. Ruby adds the lower number together until it exceeds the top number, and outputs the count. For floats, this will include decimal places.
What is the difference between integers and floats?
  - An integer is a terminating number (positive or negative) with no decimal point. A float is a number with (floating) decimal points.
What is the difference between integer and float division?
  - Float division is the same kind of division (with decimal points) that we all learned as kids, whereas integer division will truncate the answer, dropping any decimal off the end and giving you an answer that is rounded down. For example, 9.0/2.0 = 4.5, but 9/2 = 4 (float, then integer).
What are strings? Why and when would you use them?
  - Strings are groups of letters. You use them when you need to input or output readable text.
What are local variables? Why and when would you use them?
  - A local variable is one which is located only in the current file. It is not shared between different files. You would use them if you are only concerned with your immediate file, for instance, if you want to do simple work with input from a user.
How was this challenge? Did you get a good review of some of the basics?
  - The best thing about this challenge, I felt, was the discussion of escape characters in the reading material and the need to convert integers to floats for division. This challenge was a good refresher from when we studied ruby in CodeCademy.