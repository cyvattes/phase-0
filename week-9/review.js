function fizzBuzz() {
  for (var i = 1; i <= 100; i++){
    if ((i % 3 === 0) && (i % 5 === 0)) {
      console.log("FizzBuzz");
    }
    else if (i % 3 === 0) {
      console.log("Fizz");
    }
    else if (i % 5 === 0) {
      console.log("Buzz");
    }
    else {
      console.log(i);
    }
  }
}

fizzBuzz();

/* Reflection
What concepts did you solidify in working on this challenge? 
  JavaScript is very similar to Ruby in its use of loops, and sometimes they are simpler to use. This is one of those cases.
What was the most difficult part of this challenge?
  Ensuring the syntax was correct was the hardest part of this challenge.
Did you solve the problem in a new way this time?
  My solution was nearly identical to the solution in other languages.
Was your pseudocode different from the Ruby version? What was the same and what was different?
  My pseudocode was the same.
  
*/