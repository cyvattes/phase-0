// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Cyrus";
console.log(name);

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var counter = 1; counter <= 100; counter += 1) {
  if ((counter % 3) == 0) {
    console.log("Fizz");
  }
  else if ((counter % 5) == 0) {
    console.log("Buzz");
  }
  else {
    console.log(counter);
  }
}
// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
  if (num1 < num2) {
    return num1
  }
  else if (num2 < num1) {
    return num2
  }
  else {
    return "The numbers are the same."
  }
}

console.log(min(0, 10));
console.log(min(0, -10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Cyrus",
  age: 26,
  fav_foods: ["curry", "meatloaf", "mashed potatoes"],
  quirk: "Writes books and plays DnD"
};