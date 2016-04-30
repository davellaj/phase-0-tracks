#Create a new class called Puppy
class Puppy

  #define a fetch method for class Puppy
  def fetch(toy)
    #This will print when the method runs
    puts "I brought back the #{toy}!"
    toy
  end
  
  #create a "speak" method that takes an integer as a parameter
  #says "woof" the number of times as the integer inputted
  #another method that can be called on instances
  def speak(integer)
    integer.times {puts "woof!"}
  end
  
  #create a method that puts "*rolls over*" when called
  def roll_over 
    puts "*rolls over*"
  end
  
  #create a method for age in dog years that takes an integer as human years
  def dog_years(integer)
    p integer *7
  end
  
  def name(input)
    puts "my name is #{input} or bad dog"
  end
  
  #will always run when ".new" is used on this class
  def initialize
    puts "initializing new puppy instance ..."
  end
  
  end

#Created a new instance of the class
fido = Puppy.new

#Certain methods can be called on instances
fido.fetch("ball")


fido.speak(3)
  
fido.roll_over

fido.dog_years(2)
  
fido.name("buddy")

jerry = Puppy.new

# # In puppy_methods.rb, design and implement your own class below the Puppy class -- anything you'd like, but it should have an initialize method and at least two other instance methods. Then do the following:

# # Use a loop to make 50 instances of your class.
# # Modify your loop so that it stores all of the instances in a data structure.
# # Iterate over that data structure using .each and call the instance methods you wrote on each instance. So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast.

class Softball
  #method that run when instance is initialized using .new
  def initialize
    puts "initializing new softball instance ..."
  end
  
  #method that counts home runs
  def home_run(ppl_on_base)
    points = ppl_on_base + 1
    puts "There were #{ppl_on_base} people on base so we scored #{points} points"
  end
    
  #method that changes input to uppercase
  def crowd_chant(chant)
    p chant.upcase
  end
    
  
end
jamie = Softball.new
jamie.home_run(1)
jamie.crowd_chant("go Jamie")

#created storage structure - array
#have array outside loop or else will create 50 new arrays, not store info within the same array
array = []

#loop fifty times over to initialize new instances
50.times do 
  name = Softball.new
  #store each instance in the array
  array.push(name)
end

p array
#random number generator class initialized on instance "runs"
runs = Random.new
#runs a method for each instance
array.each do |instance|
  #uses random number generator method called "rand" on instance "runs"
  instance.home_run(runs.rand(4))
  #chants using the name of each instance
  instance.crowd_chant("Go #{instance}")
end