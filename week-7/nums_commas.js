// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Alex Williams.

// Pseudocode

//   number.reverse
//   array = number.split by 3
//   String = ""
  
//   Loop array for each
//   string += loop
//   string += ,
//   end
  
//   remove last , 
//   reverse
  
//   return string
  

// Initial Solution
  
/*
var separateComma = function(num) {     
  
  //convert number to string
  var tempString = num.toString();
  //convert string to array and backwards
  var tempArray = tempString.split("").reverse();
  // start new array
  var newArray = [];
  
  // for loop through array 
  for (var i = tempArray.length; i > 0; i--) {
    if ((i % 3 === 0) && (i != tempArray.length)) {
      newArray.push(",");
    }
  newArray.push(tempArray[i-1]);
  }
 
  var newString = newArray.join("");
  return newString;
}

separateComma(1569743) == "1,569,743"
*/

// Refactored Solution

var separateComma = function(num) {     
  
  //convert number to reverse array
  var tempArray = num.toString().split("").reverse();
  var newArray = [];
  
  //add comma logic: add extra array point every 3 places. 
  for (var i = tempArray.length; i > 0; i--) {
    //logic check: every 3rd place and not last place. 
    if ((i % 3 === 0) && (i != tempArray.length)) {
      newArray.push(",");
    }
  newArray.push(tempArray[i-1]);
  }
 
  //join array into string
  var newString = newArray.join("");
  console.log(newString);
  return newString;
};


// Your Own Tests (OPTIONAL)
separateComma(1569743);
separateComma(154369743);
separateComma(1523469743);
separateComma(15235569743);



// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  We had to approach the problem differently because .reverse and .to_a/.to_s didn't exist. 
What did you learn about iterating over arrays in JavaScript?
  Iterating over arrays is pretty simple. I still prefer iteration in Ruby, where you can just type .each.
What was different about solving this problem in JavaScript?
  We had to do a few weird conversions of data type to get from integer to array that felt a little clumsy.
What built-in methods did you find to incorporate in your refactored solution?
  We ended up using .toString, .reverse, .split, and .join. I've used all of these before except .toString, which worked the same as in Ruby.

*/