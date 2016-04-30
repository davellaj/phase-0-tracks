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
  
  end

#Created a new instance of the class
fido = Puppy.new

#Certain methods can be called on instances
fido.fetch("ball")


fido.speak(3)
  
fido.roll_over

fido.dog_years(2)
  
fido.name("buddy")