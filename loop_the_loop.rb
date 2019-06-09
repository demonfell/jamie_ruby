we_wanna_ride = true

stops = ["Northern Liberties", "Fishtown", "Chinatown", "Kensington", "Old City", "36th Street", "22nd Street"]

while we_wanna_ride
	print "Where ya headin', pardner?"
		destination = gets.chomp

	if stops.include? destination
		puts "I know how to get to #{destination}! Here's the station list:"
			stops.each do |stop|
				unless stop != stops.last?
					puts "#{stop},"
			end		
				else
					puts "#{stop}"
				# break if stop == destination
			end
	else 
		puts "Sorry we don't stop at that station. Kick rocks, townie."
		we_wanna_ride = false
	end
end	 
