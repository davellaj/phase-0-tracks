// 7.2 pairing
//Release 0
var color = ["aqua", "orange", "blue", "gold"];
var names = ["chance", "jamie", "john", "andrew"];
color.push("yellow");
names.push("jen");
//console.log(color);
//console.log(names);

// Release 1
var barn = {}; // declare empty object

// loop to add each pair to a new object
for (var i = 0; i < names.length; i++) {
    barn[names[i]] = color[i];
}
console.log(barn); // print object
// Release 2