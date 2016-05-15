// Pseudocode Release 0 Find Longest Word or Phrase

// input - an array of words or phrases
// example: ["long phrase","longest phrase","longer phrase"]

// steps -
// create a function that takes an array as a parameter
// loop through the array
// for each index in the array find the string length
// if the string length is greater than the last string length store it in a varible
// return that variable at the end of the loop.

// output - the longest string in the array
// example: "longest phrase"


function longestStr(arr) {
	var longest = arr[0];
	for (var i = 0; i < arr.length; i++){
		if (arr[i].length > longest.length){
			longest = arr[i];
		}
	}

	return longest;
}

var test = ["long phrase","longest phrase","longer phrase"];
longestStr(test);

var greetings = ["hello", "How you doing", "whatsup", "hi"];
console.log(longestStr(greetings));

var sing = ["doooooooooooe", "ray", "me", "fa", "so", "la", "ti", "doe"];
console.log(longestStr(sing));

// Pseudocode Release 1 Find a Key-Value Match

// input - two objects with key-value pairs
// example: {name: "Steven", age: 54} and {name: "Tamir", age: 54}

// steps -
// loop over each key value pair for object 1
// 	see if that object1 key-value pair is included in object 2.
// if true return true and break loop
// else if false continue loop and return false
// 

// output - if there is at least one match return true, else return false
// example: true

	for (key in obj1){
		if (obj2[key] === obj1[key]){
			1 === 1;
			break;
		}
		else {
			1 != 1;
		}
	}