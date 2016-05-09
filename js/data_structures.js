//Release 0

console.log("7.1 Pairing Jamie and John")
console.log("7.1 Release 0")
console.log("-----------")
var color = ["aqua", "orange", "blue", "gold"];
var names = ["chance", "jamie", "john", "andrew"];
color.push("yellow");
names.push("jen");
//console.log(color);
//console.log(names);

// Release 1
console.log("7.1 Release 1")
console.log("-----------")

var barn = {}; // declare empty object

// loop to add each pair to a new object
for (var i = 0; i < names.length; i++) {
    barn[names[i]] = color[i];
}
console.log(barn); // print object

//Release 2
console.log("7.1 Release 2")
console.log("-----------")

function Car(make, color, cost, goodMileage) {
	console.log("Your new car is:", this);

	this.make = make;
	this.color = color;
	this.cost = cost;
	this.goodMileage = goodMileage;
	this.accelerate = function() {console.log(".... whoosh");};

	console.log("CAR INITIALIZATION COMPLETE");
}

var anotherCar = new Car("Lincoln", "black", 30000, false);
console.log(anotherCar);
console.log("This car can accelerate");
anotherCar.accelerate();

var cleanCar = new Car("Tesla", "red", "35000", true);
console.log(cleanCar.make);
console.log("This car can accelerate");
cleanCar.quietAccelerate = function() {console.log(".....flash, quiet");};
cleanCar.quietAccelerate();

//Release 3 Research on your own
// 1. If you wanted to loop through the keys and values of an object, how would you do that?
 // (There are a few ways to accomplish this, and some gotchas that can happen depending on 
 // your approach.)
// 2. re there advantages to using constructor functions to create objects? Disadvantages? 