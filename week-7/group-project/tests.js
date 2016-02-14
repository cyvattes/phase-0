// As a user, I want a function called sum that gives me the sum of a collection of numbers

function sum(arr) {
    var tot = 0;
    for (var i = 0; i < arr.length; i++)
        tot += arr[i];
    return tot;
}
//test code next line
console.log(sum([5,7,8]));

// As a user, I want a function called mean that will give me the average value of a list of numbers

function mean(arr){
  var tot = 0;
  var len = arr.length;
  for (var i = 0; i < len; i++)
    tot += arr[i];
  return tot/len;
}

//test code next line
console.log(mean([90,100]));

// As a user, I want a function called median that will give me the "middle" of a list of sorted numbers

function median(array) {

    array.sort(function(a,b) {return a - b;} );

    var half = Math.floor(array.length/2);

    if(array.length % 2 == 1)
        return array[half];
    else
        return (array[half-1] + array[half]) / 2.0;
}

//test code next line
console.log(median([1,3,4,5,6,7,9]));
console.log(median([1,4,16,20]));


// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)