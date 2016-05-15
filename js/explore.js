// Pseudocode

// going to write a function called reverse that takes a string as a parameter.
// function reverse("hello")

// input "hello"

// function:
// Loop through each letter of the string
// index the last letter of the string first
// continue to loop backwards through the string
// add the string together from each loop and store in a new variable
// return variable at the end of the loop

// output "olleh"
// call function using function name and parameter

function reverse(str){
	var wordReverse = "";
	for (var i = str.length - 1; i >=0; i-=1){
		wordReverse += str[i];
	}
	return wordReverse;
}

// console.log(reverse("hello"));

// add driver code to call the reverse function and store result in variable
var confused = reverse("What");
// console.log(confused);

// add driver code to print the previous variable if some condition is true.
if (1 === 1) {console.log(confused)};