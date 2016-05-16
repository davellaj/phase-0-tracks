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

// Pseudocode Release 1 Find a Key-Value Match

// input - two objects with key-value pairs
// example: {name: "Steven", age: 54} and {name: "Tamir", age: 54}

// steps -
// create function called match that takes two objects.
// loop over each key value pair for object 1
// 	see if that object1 key-value pair is included in object 2.
// if true return true and break loop
// else if false continue loop and return false
// 	for (key in obj1){
	// 	if (obj2[key] === obj1[key]){
	// 		1 === 1;
	// 		break;
	// 	}
	// 	else {
	// 		1 != 1;
	// 	}
	// }

// output - if there is at least one match return true, else return false
// example: true


// Pseudocode Release 2 Generate Random Test Data

// INPUT number for length of array
// example input 3

// create function random that takes a number as a parameter
// create an array
// loop for i<length
// generate a random word with random length of 1 to 10 letters which involves
// 		using a random number from 1 to 10.
// 		generate random number: Math.floor((Math.random() * 10) + 1);
// push that string into the aray
// print the array

// OUTPUT array of strings with length of number filled with random strings
// example output ["aljg", "eiwhowih", "mn"]

// functions
// find longest string in array function
function longestStr(arr) {
	var longest = arr[0];
	for (var i = 0; i < arr.length; i++){
		if (arr[i].length > longest.length){
			longest = arr[i];
		}
	}

	return longest;
}

// match two objects key-value pair function
function match(obj1,obj2) {
	for (key in obj1){
		var result = "";
		if (obj2[key] === obj1[key]){
			result = "true";
			break;
		}
		else {
			result = "false";
		}
	}
	if (result === "true"){
		console.log("true");
	}
	else {
		console.log("false");
	}
}

// randomString function
var randomString = function() {
	var strLength = Math.floor((Math.random() * 10) + 1); 
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    for(var i = 0; i < strLength; i++) {
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return text;
};

function arrString(arrLength){
var arr = [];
	for (i=0; i<arrLength; i++){
		var word = randomString();
		arr.push(word);
	}
	return arr;
}

// Driver code for random string in array function
// generates the array using arrString function
arrString(2);
// prints the array
console.log(arrString(10));
// feeds array into longestStr function
longestStr(arrString(3));
//  prints the result from feeding arrString function into longestStr function
console.log(longestStr(arrString(3)));
// check to make sure longestStr is working correctly
var newArr = arrString(3);
console.log(newArr);
longestStr(newArr);
// prints the results of feeding arrString function into longestStr function
console.log(longestStr(newArr);)


// Driver code longestStr function
var test = ["long phrase","longest phrase","longer phrase"];
longestStr(test);

var greetings = ["hello", "How you doing", "whatsup", "hi"];
console.log(longestStr(greetings));

var sing = ["doooooooooooe", "ray", "me", "fa", "so", "la", "ti", "doe"];
console.log(longestStr(sing));


// Driver code match function
// true outcome
var obj1 = {name: "Steven", age: 54, height: 2};
var obj2 = {name: "Tamir", age: 54};

// false outcome
var obj1 = {name: "Steven", age: 54, height: 2};
var obj2 = {name: "Tamir", age: 55};

// true outcome
var client1 = {name: "jamie", preference: "old fashion", color: "blue", size: 6};
var client2 = {nickname: "jada", color: "blue", size: 6};

// false outcome
var client1 = {name: "jamie", preference: "old fashion", color: "blue", size: 6};
var client2 = {nickname: "jada", color: "green", size: 8};

match(obj1,obj2);
match(client1,client2);
