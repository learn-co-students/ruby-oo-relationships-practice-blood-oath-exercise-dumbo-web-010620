require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end


#Cult groups
cc1 = Cult.new("Birds", "California", 2000, "We Tweeted before Twitter")
cc2 = Cult.new("Chickens", "New York", 2002, "We just dont give a Cluck")
cc3 = Cult.new("Brotherhood of the TickleToes", "Tanzania", 2000, "We ain't the TwinkleToes, we're the TickleToes.")
cc4 = Cult.new("Brotherhood of the 6th...finger", "California", 1901, "if you ever need 3 thumbs up.")

#Follower Peeps
f1 = Follower.new("Pete", 20 , "Tickle everyone!")
f2 = Follower.new("Rebecca", 23 , "I love Birds!")
f3 = Follower.new("Trey", 30 , "Be happy!")
f4 = Follower.new("Greg", 25 , "Life sucks, i'll join a cult!")
f5 = Follower.new("Tony", 20, "It's Tony, not ToeKnee.")
f6 = Follower.new("Biggy-Smalls", 30, "Best Rapper in a Cult, yay yay")
f7 = Follower.new("TwoPackShaker", 25, "We born to be in this cult")
f8 = Follower.new("Lil' Mumblr", 30, " ahh..fhh.rrobklasdf")

#BloodOath Dates


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
