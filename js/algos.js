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