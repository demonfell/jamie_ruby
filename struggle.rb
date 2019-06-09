stops = ["Northern Liberties", "Fishtown", "Chinatown", "Kensington", "Old City", "36th Street", "22nd Street"]
stops.each_with_index do |stop,i|
  if stop[i] != stop[-1]
    puts "\"#{stop}\",#{i}"	
  else
    puts "\"#{stop}\"#{i}"	
  end
end