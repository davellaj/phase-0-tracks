puts "before:"
def say_hello
  puts "Hello World"
end
say_hello


puts "after:"
def say_hello
  puts "Hello World"
  yield("Julie", "Jamie")
end

say_hello {|name1, name2| puts "hello #{name1} and #{name2}"}


puts "before:"

our_age =[30, 28]

our_age.each {|element| puts "#{element}"}
p our_age

puts "after:"
our_age.map!{|element|
  puts element
  element+=1
  }
p our_age

puts "before":
  
restaurant={
  :hummus => 4,
  :ice_cream => 2,
  :soda => 1
  }

puts "After:"
restaurant.map{|item, price| puts"The prices have gone up. Each item #{item} has risen #{price+1}."}

restaurant.map{|food, price| restaurant[food]+=1}
p restaurant

#Release 2
p restaurant.select{|food,price| price <=2} 
p restaurant.any?{|food,price|food.length<=4}
p restaurant.delete_if{|food,price|price >=5}

p our_age.select{|age| age >= 28}
p our_age.any?{|age| age < 20}
p our_age.delete_if{|age| age < 30}