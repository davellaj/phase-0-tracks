#Restaurant Organization

# restaurant
# 	Front of house
# 		hostess
# 			names, scheduled
# 		waiters 
# 			name, scheduled
# 		bussers
# 			name, scheduled
# 	Back of house
# 		cook
# 			names, scheduled
# 		diswasher
# 			names, scheduled
# 	Menu
# 		Appetizer
# 			array of foods
# 		Entree
# 			array of foods
# 		Dessert
# 			array of foods
# 			hash of ice cream

#nested data to keep track of a restaurants wait staff for the night and the menu

restaurant = {
	FOH: {
		hostess: {
			Jamie: "yes",
			jen: "no",
			"mark" => "no"
		},
		waiters: {
			bob:"yes",
			cathy: "yes",
			gary: "yes",
			hope: "no",
			ted: "no"
		},
		busser: {
			aron: "yes",
			harry: "no"
		}
	},
	BOH: {
		cooks:{
			jr: "no",
			kelly: "yes"
		},
		diswasher: {
			ben: "yes",
			beth: "no"
		}
	},
	menu: {
		appetizer: [ 
			"salad",
			"cheese platter",
			"mozzerella and tomato"
		],
		entree: [
			"chicken and vegetables",
			"beef and broccoli",
			"fish chips"
		],
		dessert: [
			"Chocolate Lava Cake",
			"Brownie",
			ice_cream: ["chocolate", "vanilla", "strawberry"]
		]
	}
}

p restaurant

#Who are the cooks the restaurant has on staff?
p restaurant[:BOH][:cooks]

#What ice cream flavors are on the dessert menu?
p restaurant[:menu][:dessert][2]

#Do we have chocolate ice cream tonight?
p restaurant[:menu][:dessert][2][:ice_cream].include?("chocolate")

#Is the new employee mark working tonight?
p restaurant[:FOH][:hostess]["mark"]