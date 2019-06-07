flow_rate=70
if flow_rate > 50 || if flow_rate < 50
	puts "Warning! flow_rate is above 50! It's #{flow_rate}."
	flow_rate = 50
	puts "The flow_rate's been reset to #{flow_rate}."
else
	puts "Warning! The flow_rate is #{flow_rate}. (Thank goodness.)"
end
