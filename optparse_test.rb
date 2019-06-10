require 'optparse'

path_to_repo = "/Users/james/repos/jamie_ruby"

options={}
option_parser = OptionParser.new do |opts|
	opts.banner = "Usage: test_config [options]"

	opts.on('-a AIRPORT_CODE') do  |airport_code| options[:airport_code] = airport_code 
	end

#end.parse!

end

option_parser.parse!
puts options.inspect

print "The path will be #{path_to_repo}/#{options[:airport_code]}.\n"
