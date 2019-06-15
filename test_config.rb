#!/usr/bin/env ruby 

require 'optparse'
require 'fileutils'

#path_to_repo = File.join(File.dirname(__FILE__), '../../../')
path_to_repo = "/Users/james/repos/jamie_ruby"

options={}
option_parser = OptionParser.new do |opts|
  opts.banner = "Usage: test_config.rb [options]"

  opts.on('-a', '--airport AIRPORT_CODE', 'Three-letter airport code' ) do  |airport_code| options[:airport_code] = airport_code 
  end

  opts.on('-r', '--realmland REALMLAND_ID', 'Realmland ID in the format my-realmland-1') do  |realmland_id| options[:realmland_id] = region_id 
  end
end
option_parser.parse!


#servers = File.readlines(path_to_repo + '/jamie_ruby/ansible/inventory/' + options[:airport_code])
servers = File.readlines(path_to_repo + options[:airport_code])
#FileUtils.mkdir_p path_to_repo + '/config/' + options[:realmland_id]
#outfile = File.new(path_to_repo + '/config/' + options[:realmland_id] + '/test.conf', 'w')

def get_my_servers_only(servers, query, outconfig)
  queried_list = servers.select{ |i| i[/^#{query}.*/] }
  queried_list.each_with_index do |server_name, i|
    if queried_list[i] != queried_list[-1]
      outconfig.print "  \"#{server_name.strip}\",\n"
    else
      outconfig.print "  \"#{server_name.strip}\"\n"
      outconfig.print "]\n"\
    end
  end
end

outfile.print "include \"../base.conf\"\n" \
"\n" \
"fooServers: [\n"
get_my_servers_only(servers,"foo-server", outfile)
"\n" \
"barServers: [\n"
get_my_servers_only(servers,"bar-server", outfile)
"\n" \
"bazServers: [\n"
get_my_servers_only(servers,"baz-server", outfile)

outfile.close
