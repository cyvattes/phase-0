 // JavaScript Olympics

// I paired [with: Sepand Assadi] on this challenge.

// This challenge took me [#] hours.


// Warm Up


array = {
  name: "Sarah",
  event: "Ladies' Single"
};

// Bulk Up
function bulkUp(array){
  array["win"] = array.name + " won " + array.event + " !";
  console.log(array.win);
}
bulkUp(array);

// Jumble your words
function reverseString(string){
  var newArray = string.split("");
  var reverseArray = newArray.reverse();
  var reverseString = reverseArray.join("");
  console.log(reverseString);
   
}
var string = "This is for testing";
reverseString(string);


// 2,4,6,8
function evenArray(array){
    var newArray = [];
    for (var counter = 0; (counter < array.length); counter++){
        if ((array[counter] % 2) == 0){
            newArray.push(array[counter]);
        }
        
    }
    return newArray;
    
    
}

var numArray = [1, 2, 3, 4, 5, 6, 7, 8, 9];
console.log(evenArray(numArray));

// "We built this city"
function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
  Using arrays and hashes (or objects) and functions is almost identical to Ruby, and is pretty simple. The hardest part is learning which methods work for which data type.
What are constructor functions?
  Constructor functions are functions that create new functions to follow a set formula from data that is passed in.
How are constructors different from Ruby classes (in your research)?
  Constructors use a "prototype" that defines how functions and data operate in the constructed function, unlike a class, which creates a new instance of the class AND controls the methods and such that it can use.

*/