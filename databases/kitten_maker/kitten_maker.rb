# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("kittens.db")
# db.results_as_hash = true


# # learn about fancy string delimiters
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS kittens(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	age INT
	)
SQL

def create_kitten(db, name, age)
	db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name,age])
end

# 100.times do 
# 	create_kitten(db, Faker::Name.name, 0)
# end

# def insert_new_kitten(db)
# 	db.execute("INSERT INTO kittens (name,age) VALUES (?,?)", ['jamie davella', 28])
# end

# insert_new_kitten(db)

# def update_kitten(db, name,age)
# 	db.execute("UPDATE kittens SET age = 29 WHERE name = 'jamie davella'")
# end

# update_kitten(db,'jamie davella', 28)
# db.execute("DELETE FROM kittens WHERE name = 'Bob'")

# db.execute(create_table_cmd)
# kittens = db.execute("SELECT * FROM kittens")
# puts kittens.class
# p kittens 

# retrieve data using the array form
# kittens.each do |kitten|
# 	puts "#{kitten[1]} is #{kitten[2]} years old"
# 	puts kitten 
# end

# # create a kittens table (if it's not there already)
# db.execute(create_table_cmd)

# # add a test kitten
# # db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# # add LOOOOTS of kittens!
# # so. many. kittens. 
# #KittenExplosion
# def create_kitten(db, name, age)
#   db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
# end

# 10000.times do
#   create_kitten(db, Faker::Name.name, 0)
# end

# # explore ORM by retrieving data using hash
# # kittens = db.execute("SELECT * FROM kittens")
# # kittens.each do |kitten|
# #  puts "#{kitten['name']} is #{kitten['age']}"
# # end

