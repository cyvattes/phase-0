# Virus Predictor

# I worked on this challenge [by myself, with: Michael Yao].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
 # sets instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 #calls the two other methods using instance variables to output the statement

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  def predicted_deaths
    # predicts deaths based on population density and population and outputs a statement
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  def speed_of_spread
    # decides on speed in months based on population density and outputs statement based on that
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key,hash|
  state = VirusPredictor.new(key, hash[:population_density], hash[:population])
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
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  The keys for the outer hash are directly added with rockets. Their values (the inner hash) uses symbol notation.
What does require_relative do? How is it different from require?
  Require_relative tells the program thar it requires a relative file (they share the same parent) in order to run. Require can add a file from another location.
What are some ways to iterate through a hash?
  We used .each, which I think is a pretty simple way to iterate over the keys.
When refactoring virus_effects, what stood out to you about the variables, if anything?
  Parameters were being passed into the methods rather than simply calling them (the methods already were using these instance variables and did not need to be passed anything)
What concept did you most solidify in this challenge?
  I was able to teach my pair how to iterate over a hash of hashes, so I feel a lot more comfortable with them.

=end