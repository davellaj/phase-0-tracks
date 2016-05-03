# Virus Predictor

# I worked on this challenge [with: Chris Wong].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# Loads the contents of other files so that they can be accessed by code in this file 
#
require_relative 'state_data'

class VirusPredictor

  # Create an instance of our VirusPredictor class and declare attributes equal to the instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    puts "#{state_of_origin} has been initialized"
  end


  # Serves as a way to call both of the other methods in the class at the same time
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Use the population density to estimate the number of deaths
  # Print out the state and estimated number of deaths in a sentence
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    # number_of_deaths = @population * ((@population_density / 50).floor / 10)

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Use the population density to estimate the speed of spread
  # Print out the state and estimated  speed of spread
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do | state, data |
  state = VirusPredictor.new(state, data[:population_density], data[:population])
  state.virus_effects
  end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# The difference between the two hash syntax are:
# 1. The first hash uses strings as keys which require quotes around the key name and the hash rocket to set its value (which is another hash). 
# 2. The other hash syntax (the hash within the hash)
# uses a symbol as the key and is using a colon after the key name followed by the value. The hash rocket
# is not necessary if the colon is after the symbol key name. 

# Require Relative - links one file with another file so that your code can access another file's data/code.
# Loads the contents of other files so that they can be accessed by code in this file 
# Require - This method appears to be in later versions of Ruby 1.8. and would only search standard library paths. 

# You can iterate over a hash using .each.

# When refactoring virus_effects it stood out that the method was taking parameters that were already available to the method from the 
# initialization and declared class attributes. These parameters were not needed to call the method. We also deleted these parameters
# in the assoicated two methods so that we didn't get a wrong number of arguments error, but also because these parameters were unnecessry. 

# I solidified the use of attributes throughout my program. One point that drove that home was the 
# realization that these instance variables no longer needed to be taken as arguments in later methods. Also
# I also solidified the each method with a hash. My partner pointed out when including our nested data from our hash  in 
# the parameter statement for the each method, we could use the value of our each parameter because that would return our hash
# where population and population density keys were, and then we can use the key to return the value we wanted. I was about to 
# go the long route and use the hash name, key, key like the code that was originally given to us in the file. This was a cool use 
# of the value parameter in an each statement. 