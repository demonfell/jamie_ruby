servers = File.readlines('/Users/james/repos/jamie_ruby/jlp')

def get_foo_only(servers)
  servers.select{ |i| i[/^foo-server.*/] }
end

def get_bar_only(servers)
  servers.select{ |i| i[/^bar-server.*/] }
end

def get_baz_only(servers)
  servers.select{ |i| i[/^baz-server.*/] }
end


print "include(\"../base.conf\")\n" \
"\n" \
"\n" \
"baz-servers:\n"\
"[\n"
  baz_servers = get_baz_only(servers)
  baz_servers.each_with_index do |server_name,i|
  #if server_name[i] != server_name[-1]
  if baz_servers[i] != baz_servers[-1]
    print "\"#{server_name.strip}\",\n"	
  else
    print "\"#{server_name.strip}\"\n"
  end
end
print "]\n"\
"\n" \
"bar-servers:\n"\
"[\n"
  bar_servers = get_bar_only(servers)
  bar_servers.each_with_index do |server_name,i|
  #if server_name[i] != server_name[-1]
  if bar_servers[i] != bar_servers[-1]
    print "\"#{server_name.strip}\",\n"	
  else
    print "\"#{server_name.strip}\"\n"
  end
end
print "]\n"\
"\n" \
"foo-servers:\n"\
"[\n"
  foo_servers = get_foo_only(servers)
  foo_servers.each_with_index do |server_name,i|
  #if server_name[i] != server_name[-1]
  if foo_servers[i] != foo_servers[-1]
    print "\"#{server_name.strip}\",\n"	
  else
    print "\"#{server_name.strip}\"\n"
  end
end
print "]\n"
